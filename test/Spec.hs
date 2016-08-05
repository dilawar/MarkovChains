import MarkovChain

main :: IO ()
main = do
    let a = markov "0.1, 0.1;0.2  ,0.2;0.1,0.2"
    print $ a
    putStrLn "Test suite not yet implemented"
