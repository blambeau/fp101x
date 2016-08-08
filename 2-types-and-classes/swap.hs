swap (x, y) = (y, x)
double x = x * 2
palindrome xs = reverse xs == xs

add :: Int -> (Int -> Int)
add = \x -> (\y -> x + y)

add2 :: (Int,Int) -> Int
add2 (x,y) = x + y

twice f x = f (f x)

mylength :: [a] -> Int
mylength xs = length xs