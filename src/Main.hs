module Main where

import Check
import Commandline
import System.Environment


main :: IO ()
main = do
  opts <- getArgs >>= commandLineOptions >>= checkOptionsConsistency
  case optMode opts of
    EXPR -> checkExpressions opts
    CONV -> checkConventions opts
