compose :: [ a -> a ] -> (a ->  a)
compose = foldr (.) id

