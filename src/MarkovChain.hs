module MarkovChain
    ( 
    markov
    ) where

import Numeric.LinearAlgebra
import Text.ParserCombinators.Parsec

matParse = sepBy line (char ';') 
line = sepBy cell (char ',' )
cell = many ( noneOf ",\n;" )

stringToTranstionMatrix :: String -> Either ParseError [[String]]
stringToTranstionMatrix str = parse matParse "unknown" str

markov matStr = stringToTranstionMatrix matStr
