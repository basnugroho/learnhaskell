-- lambda
-- format:
plusOne = (\x -> x + 1)
timesTwo = (\x -> x * 2)

-- lambda multiple
-- (\x y z -> [x, y*2, 3*z]) 5 6 3

greaterThan100_2 :: [Integer] -> [Integer]
greaterThan100_2 xs = filter (\x -> x > 100) xs

-- using filter
greaterThan100_3 :: [Integer] -> [Integer]
greaterThan100_3 xs = filter (>100) xs

-- function composition
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- (.) f g = \x -> f (g x)

-- before
myTest :: [Integer] -> Bool 
myTest xs = even (length (greaterThan100_2 xs))
-- after
myTest' :: [Integer] -> Bool 
myTest' = even . length . greaterThan100_2

-- map' :: (a->b) -> [a] -> [a]
-- map' f (x:xs) = f (x) : map' (xs)
-- map' f (a) = []

filter' :: (a->Bool) -> [a] ->[a]
filter' f (x:xs) = filter' f xs

-- Latihan 2
-- Buatlah sebuah fungsi 'perkembangan' yang menghasilkan semua list yang bertambah anggotanya hingga ke list itu sendiri (prefixes):
-- perkembangan :: [a] -> [[a]]
-- misal: 
-- > perkembangan [1,2,3]
-- > [[1], [1,2], [1,2,3]]
perkembangan :: [a] -> [[a]]
perkembangan (a) = foldr (\b c -> c ++ [b] ) [[]] [a]

headMaybe :: [a] -> Maybe a
headMaybe (x:xs) = Just x
headMaybe _ = Nothing

-- currying and partial function
-- f :: Int -> Int -> Int
-- f x y = 2*x + y
-- all function in haskell take one argument

-- one param func
-- f :: a -> b -> c -> d
-- f :: a -> f
-- f :: a -> b -> f
-- f :: a -> (b -> (c -> d))

-- partial func
tambah x y = x + y
tambah' x = (\y -> x + y)
tambah'' = (\x -> (\y -> x + y))

multThree :: (Num a) => a -> a -> a -> a  
multThree x y z = x * y * z  
-- let multTwoWithNine = multThree 9  
-- -- multTwoWithNine 2 3  
-- let multWithEighteen = multTwoWithNine 2
-- -- multWithEighteen 10  

compareWithHundred :: (Num a, Ord a) => a -> Ordering  
compareWithHundred x = compare 100 x 
compareWithHundred' :: (Num a, Ord a) => a -> Ordering  
compareWithHundred' = compare 100  

-- lambda abstraction
-- \x y x -> ...
-- \x (\y (\z -> ...))

-- sesuatu :: Int -> Int -> Int -> Int
-- sesuatu a b c = a + b + c
-- sesuatu a b = (\c -> a + b + c)
-- sesuatu a = (\b -> (\c -> a + b + c))
-- sesuatu = (\a -> (\b -> (\c -> a + b + c)) )

susun :: a -> [a]
susun x = x : []

-- Latihan 1
-- -- Buatlah sebuah fungsi tiruan dari reverse (membalik urutan dalam sebuah list), dengan menggunakan salah satu fold
-- balik :: [a] -> [a]
-- balik = undefined
balik :: (Num a) => [a] -> [a]
--balik = foldr (\acc x -> x ++ [acc] ) []
balik s = foldr (\x xs -> xs ++ [x]) [] s
[1,2,3]
[] ++ 3 --> [3]
[3] ++ 2 --> [3, 2]
[3,2] ++ 1 --> [3, 2, 1]
--balik s = foldr (\x acc -> acc ++ [x])
--balik xs = foldr (\ x acc -> acc ++ [x]) [] xs

balik' :: (Num a) => [a] -> [a]
balik' = foldl (\acc x -> x : acc) []

xor :: [Bool] -> Bool
xor = foldr (\acc x -> x && \acc) [] 