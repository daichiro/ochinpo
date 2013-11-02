-- haskell ochinpo

import System.Random

main :: IO ()
main = do 
    gen <- getStdGen
    let a = take 10000 $ (randomRs (1,4) gen :: [Int])
    putStrLn (o1 1 a)


o1 :: Int -> [Int] -> String
o1 i (x:xs)
    | x == 1 && i == 1 = "お"++(o1 2 xs)
    | x == 1           = "お"++(o1 1 xs)
    | x == 2 && i == 2 = "ち"++(o1 3 xs)
    | x == 2           = "ち"++(o1 1 xs)
    | x == 3 && i == 3 = "ん"++(o1 4 xs)
    | x == 3           = "ん"++(o1 1 xs)
    | x == 4 && i == 4 = "ぽ"
    | x == 4           = "ぽ"++(o1 1 xs)
    | otherwise        = "!!???"




