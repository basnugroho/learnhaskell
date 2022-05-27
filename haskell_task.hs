kurang :: Int -> Int -> Int
kurang g h = g - h

perkalian :: Int -> Int
perkalian x = 3 * 2

bagi2' :: Int -> Int -> Float
bagi2' x y = fromIntegral x / 2

myNestedCond :: Int -> Int -> Int -> Int
myNestedCond a b c = if a <= b
                    then a + b
                    else
                        if a <= c
                        then a
                        else a - b

myNestedCond2 :: Int -> String
myNestedCond2 a = if a <= 2
                    then show a ++ " lebih kecil dari 2"
                    else
                        if a < 6
                        then show a ++ " lebih kecil dari 6"
                        else "hasil dari " ++ show a ++ " - 2 adalah " ++ show (a-2) 

-- ghci> myNestedCond2 1
-- "1 lebih kecil dari 2"
-- ghci> myNestedCond2 2
-- "2 lebih kecil dari 2"
-- ghci> myNestedCond2 3
-- "3 lebih kecil dari 6"
-- ghci> myNestedCond2 4
-- "4 lebih kecil dari 6"
-- ghci> myNestedCond2 5
-- "5 lebih kecil dari 6"
-- ghci> myNestedCond2 6
-- "hasil dari 6 - 2 adalah 4"