module Main
  ( main
  ) where

import qualified Codec.Text.IConv          as IConv
import qualified Data.ByteString.Lazy      as L
import qualified Data.ByteString.Lazy.UTF8 as UTF8
import           Data.Char                 (isUpper, toLower)
import           Data.List
import           Data.List.Split
import qualified Data.Map                  as Map
import           Data.Maybe
import           Data.Monoid               ((<>))
import           Language.C                (parseCFile)
import           Language.C.Analysis
import           Language.C.Data.Ident
import           Language.C.System.GCC
import           Options.Applicative
import           Text.Regex.Posix          ((=~))

type TypeMap = Map.Map String String

data CStructMember = CStructMember
  { cName :: String
  , cType :: String
  , hName :: String
  , hType :: String
  } deriving (Show)

data CStruct =
  CStruct String
          [CStructMember]
  deriving (Show)

parseAST :: String -> IO GlobalDecls
parseAST f =
  fst <$>
  (parseCFile (newGCC "gcc") Nothing [] f >>= checkResult >>=
   checkResult . runTrav_ . analyseAST)
  where
    checkResult :: (Show a) => Either a b -> IO b
    checkResult = either (error . ("[parseing]" ++) . show) return

parseTypeMap :: IO TypeMap
parseTypeMap = do
  globals <- parseAST "cbits/ctp/ThostFtdcUserApiDataType.h"
  return $ foldl f Map.empty (gTypeDefs globals)
  where
    f :: TypeMap -> TypeDef -> TypeMap
    f acc (TypeDef ident t _ _) =
      let n = identToString ident
      in if "TThost" `isPrefixOf` n
           then Map.insert n (toHS t) acc
           else acc
    toHS :: Type -> String
    toHS (DirectType t _ _) = toHS' t
    toHS (ArrayType t _ _ _) =
      case toHS t of
        "Char" -> "String"
        _      -> error "unknown"
    toHS _ = error "unknown"
    toHS' :: TypeName -> String
    toHS' (TyIntegral t) =
      case t of
        TyChar  -> "Char"
        TyInt   -> "Int"
        TyShort -> "Int16"
        e       -> error $ show e
    toHS' (TyFloating _) = "Double"
    toHS' _ = error "unknown"

parseStruct :: TypeMap -> IO [CStruct]
parseStruct tm = do
  globals <- parseAST "cbits/ctp/ThostFtdcUserApiStruct.h"
  return $ foldl f [] (gTags globals)
  where
    f :: [CStruct] -> TagDef -> [CStruct]
    f acc tag =
      case tag of
        (CompDef (CompType (NamedRef ident) StructTag members _ _)) ->
          CStruct (identToString ident) (foldl fm [] members) : acc
        _ -> acc
    fm :: [CStructMember] -> MemberDecl -> [CStructMember]
    fm acc m =
      case m of
        MemberDecl (VarDecl (VarName n _) _ (TypeDefType (TypeDefRef t _ _) _ _)) _ _ ->
          let n' = identToString n
              t' = identToString t
          in CStructMember
             {cName = n', cType = t', hName = n2hs n', hType = t2hs t'} :
             acc
        _ -> acc
    n2hs :: String -> String
    n2hs (x:xs) = toLower x : xs
    n2hs []     = error "none"
    t2hs :: String -> String
    t2hs t = fromMaybe (error "unknown") $ Map.lookup t tm

printStruct :: [CStruct] -> IO ()
printStruct sl = printStructToData sl >> printStructToStorable sl
  where
    printStructToData :: [CStruct] -> IO ()
    printStructToData =
      mapM_ $ \(CStruct n ms) ->
        let maxLen = maxMemberLen ms
            dataOrNewtype =
              if length ms == 1
                then "newtype"
                else "data"
        in do putStr $ dataOrNewtype ++ " " ++ n ++ " = " ++ n ++ "\n  { "
              putStrLn . intercalate "\n  , " $
                map
                  (\(CStructMember _ _ hn ht) ->
                     hn ++ padding hn maxLen ++ " :: " ++ ht)
                  ms
              putStrLn "  } deriving (Show)\n"
              putStrLn $
                "{#pointer *" ++ n ++ " as " ++ n ++ "Ptr -> " ++ n ++ "#}\n"
    printStructToStorable :: [CStruct] -> IO ()
    printStructToStorable =
      mapM_ $ \(CStruct n fields) -> do
        putStr $
          unlines
            [ "instance Storable " ++ n ++ " where"
            , "  sizeOf _ = {#sizeof " ++ n ++ "#}"
            , "  alignment _ = {#alignof " ++ n ++ "#}"
            , "  peek p ="
            , "    " ++ n ++ " <$>"
            ]
        putStrLn . intercalate " <*>\n" $
          map
            (\(CStructMember cn _ _ ht) ->
               let cf = n ++ "->" ++ cn
               in "    " ++
                  case ht of
                    "String" -> "(({#get " ++ cf ++ "#} p) >>= peekCString)"
                    "Char" -> "fmap castCCharToChar ({#get " ++ cf ++ "#} p)"
                    "Int" -> "fmap fromIntegral ({#get " ++ cf ++ "#} p)"
                    "Int16" -> "fmap fromIntegral ({#get " ++ cf ++ "#} p)"
                    "Double" -> "fmap realToFrac ({#get " ++ cf ++ "#} p)"
                    _ -> error "unknown")
            fields
        putStrLn "  poke p s = do"
        putStrLn . intercalate "\n" $
          map
            (\(CStructMember cn _ hn ht) ->
               let hf = hn ++ " (s :: " ++ n ++ ")"
                   cf = n ++ "->" ++ cn
               in "    " ++
                  case ht of
                    "String" ->
                      "withCString (" ++ hf ++ ") ({#set " ++ cf ++ "#} p)"
                    "Char" ->
                      "{#set " ++ cf ++ "#} p (castCharToCChar $ " ++ hf ++ ")"
                    "Int" ->
                      "{#set " ++ cf ++ "#} p (fromIntegral $ " ++ hf ++ ")"
                    "Int16" ->
                      "{#set " ++ cf ++ "#} p (fromIntegral $ " ++ hf ++ ")"
                    "Double" ->
                      "{#set " ++ cf ++ "#} p (realToFrac $ " ++ hf ++ ")"
                    _ -> error "unknown")
            fields
        putStrLn ""
    maxMemberLen :: [CStructMember] -> Int
    maxMemberLen = maximum . map (\(CStructMember _ _ hn _) -> length hn)
    padding :: String -> Int -> String
    padding s n = replicate (n - length s) ' '

printDefine :: IO ()
printDefine =
  UTF8.toString . IConv.convert "GBK" "UTF-8" <$>
  L.readFile "cbits/ctp/ThostFtdcUserApiDataType.h" >>=
  mapM_ f . lines
  where
    f :: String -> IO ()
    f line
      | [[_, n, v]] <- line =~ "#define\\s+(\\w+)\\s+(\'\\w\')" =
        putStrLn $ format n v
      | otherwise = return ()
    format :: String -> String -> String
    format n v =
      let n' = n2hs n
      in unlines [n' ++ " :: Char", n' ++ " = " ++ v]
    n2hs :: String -> String
    n2hs =
      (\(x:xs) -> toLower x : xs) .
      concatMap
        (\s@(x:xs) ->
           if all isUpper s
             then x : fmap toLower xs
             else s) .
      splitOn "_"

data Options
  = ConvStruct
  | ConvDefine
  deriving (Show)

main :: IO ()
main = do
  o <- execParser opts
  case o of
    ConvStruct -> parseTypeMap >>= parseStruct >>= printStruct
    ConvDefine -> printDefine
  where
    opts :: ParserInfo Options
    opts =
      info
        (flag' ConvStruct (long "struct" <> help "Parse struct") <|>
         flag' ConvDefine (long "define" <> help "Parse define") <**> helper)
        fullDesc
