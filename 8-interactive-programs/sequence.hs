sequence' [] = return []
sequence' (m:ms)
  = do a <- m
       as <- sequence' ms
       return (a:as)

mapM' :: Monad m => (a -> m b) -> [a] -> m [b]
mapM' f [] = return []
mapM' f (a:as)
  = f a >>= \ b -> mapM' f as >>= \ bs -> return (b:bs)

filterM' :: Monad m => (a -> m Bool) -> [a] -> m [a]
filterM' _ [] = return []
filterM' p (x:xs)
  = do flag <- p x
       ys <- filterM' p xs
       if flag then return (x:ys) else return ys

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' f a [] = a
foldl' f a (x:xs) = foldl f (f a x) xs

--foldLeftM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a
--foldLeftM f a [] = return a
--foldLeftM f a (x:xs) = foldLeftM f func xs
--  where func = do x <- f a x
--                  return x

liftM :: Monad m => (a -> b) -> m a -> m b
liftM f m = m >>= \ a -> m >>= \ b -> return (f a)
