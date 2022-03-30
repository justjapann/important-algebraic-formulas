{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_mathematic (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/japan/Desktop/haskell-estudo/mathematic/.stack-work/install/x86_64-linux-tinfo6/a9f4855cfff0f5ff76526516b768e97e7692025fc1650dc79a65c7eb5f8d7725/9.0.2/bin"
libdir     = "/home/japan/Desktop/haskell-estudo/mathematic/.stack-work/install/x86_64-linux-tinfo6/a9f4855cfff0f5ff76526516b768e97e7692025fc1650dc79a65c7eb5f8d7725/9.0.2/lib/x86_64-linux-ghc-9.0.2/mathematic-0.1.0.0-2RGCnPuM90uDc3cvTDcosc-mathematic"
dynlibdir  = "/home/japan/Desktop/haskell-estudo/mathematic/.stack-work/install/x86_64-linux-tinfo6/a9f4855cfff0f5ff76526516b768e97e7692025fc1650dc79a65c7eb5f8d7725/9.0.2/lib/x86_64-linux-ghc-9.0.2"
datadir    = "/home/japan/Desktop/haskell-estudo/mathematic/.stack-work/install/x86_64-linux-tinfo6/a9f4855cfff0f5ff76526516b768e97e7692025fc1650dc79a65c7eb5f8d7725/9.0.2/share/x86_64-linux-ghc-9.0.2/mathematic-0.1.0.0"
libexecdir = "/home/japan/Desktop/haskell-estudo/mathematic/.stack-work/install/x86_64-linux-tinfo6/a9f4855cfff0f5ff76526516b768e97e7692025fc1650dc79a65c7eb5f8d7725/9.0.2/libexec/x86_64-linux-ghc-9.0.2/mathematic-0.1.0.0"
sysconfdir = "/home/japan/Desktop/haskell-estudo/mathematic/.stack-work/install/x86_64-linux-tinfo6/a9f4855cfff0f5ff76526516b768e97e7692025fc1650dc79a65c7eb5f8d7725/9.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "mathematic_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "mathematic_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "mathematic_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "mathematic_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "mathematic_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "mathematic_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
