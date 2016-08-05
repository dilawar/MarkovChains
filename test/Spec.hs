import MarkovChain

main :: IO ()
main = do
    let a = markov "a b c"
    print $ a
    putStrLn "Test suite not yet implemented"
