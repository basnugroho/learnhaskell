-- Soal 1
tambahDepan :: Int -> [Int]
tambahDepan x = x : [1,2,3]
-- ghci> tambahDepan 0
-- [0,1,2,3]

-- Soal 2
tambahBelakang :: Int -> [Int]
tambahBelakang x = [1,2,3] ++ [x]
-- ghci> tambahBelakang 4
-- [1,2,3,4]

-- Soal 3
ambilDepan :: [Int] ->  Int
ambilDepan (x:xs) = x
-- ghci> ambilDepan [1,2,3]
-- 1

ambilDepanSafe :: [a] -> Maybe a
ambilDepanSafe [] = Nothing
ambilDepanSafe (a:as) = Just a
-- ghci> ambilDepanSafe []
-- Nothing
-- ghci> ambilDepanSafe [1,2,3]
-- Just 1

-- Soal 4
takeFive :: [Int] -> [Int]
takeFive (x:xs)
    | length (x:xs) >= 5 = take 5 (x:xs)
    | otherwise = x:xs
-- ghci> takeFive [1,2,3,4,5,6,7]
-- [1,2,3,4,5]

-- Soal 5
takeFive2 :: [Int] -> [Int]
takeFive2 [] = []
takeFive2 (x:xs) = if length (x:xs) >= 5 then take 5 (x:xs) else (x:xs)
-- ghci> takeFive2 [1,2,3,4,5,6,7]
-- [1,2,3,4,5]
