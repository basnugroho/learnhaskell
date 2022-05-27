class Listable a where
    toList :: a -> [Int]

instance Listable Int where
    toList x = [x]
instance Listable Bool where
    toList True = [1]
    toList False = [0]
-- instance Listable [a] where
--     toList x = [x]
-- instance Listable (Tree a) where
--     toList [Tree a] = [Tree a]