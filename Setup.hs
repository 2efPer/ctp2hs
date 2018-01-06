import Data.Maybe

import Distribution.PackageDescription
import Distribution.Simple
import Distribution.Simple.LocalBuildInfo
import Distribution.Simple.Setup
import System.Directory

main :: IO ()
main = defaultMainWithHooks simpleUserHooks {confHook = ctpConfHook}

ctpConfHook ::
     (GenericPackageDescription, HookedBuildInfo)
  -> ConfigFlags
  -> IO LocalBuildInfo
ctpConfHook p f = do
  info <- confHook simpleUserHooks p f
  let descr = localPkgDescr info
      lib = fromJust $ library descr
  libBuildInfo' <- addExtraLibDirs $ libBuildInfo lib
  return $
    info
    { localPkgDescr =
        descr {library = Just $ lib {libBuildInfo = libBuildInfo'}}
    }
  where
    addExtraLibDirs :: BuildInfo -> IO BuildInfo
    addExtraLibDirs info = do
      d <- (++ "/cbits/ctp/") <$> getCurrentDirectory
      return $ info {extraLibDirs = d : extraLibDirs info}
