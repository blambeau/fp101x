funct :: Int -> [a] -> [a]
funct n xs = take (n + 1) xs ++ drop n xs