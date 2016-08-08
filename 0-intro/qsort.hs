qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
  where larger = [ a | a <- xs, a > x ]
        smaller = [ a | a <- xs, a <= x ]
