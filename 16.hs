digits :: Integer -> [Int]
digits = map (read . return) . show

result = sum $ digits $ 2 ^ 1000
main = putStrLn $ show result
