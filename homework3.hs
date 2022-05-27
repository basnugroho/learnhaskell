test :: [Int]
test = [5,5,2,0,4,2,2,0,4,1,9,2,8,3,3,0]
--1
checkDigit:: [Int]
checkDigit = reverse (drop 1 (reverse test))
--2
dropLastDigit :: [Int] -> [Int]
dropLastDigit n = reverse (drop 1 (reverse n))
--3
reverseNumbers :: [Int] -> [Int]
reverseNumbers n = reverse n
--4
multiplyOddPositions :: [Int] -> [Int]
multiplyOddPositions n
    | length n == 0 = []
    | length n `mod` 2 /= 0 = head n * 2 : multiplyOddPositions (tail n)
    | otherwise = head n : multiplyOddPositions (tail n)
--5
substract9 :: [Int] -> [Int]
substract9 n = [ if c > 9 then c - 9 else c | c <- n ]
--6
addAllNumbers :: [Int] -> Int 
addAllNumbers n = sum [ c | c <- n ] + sum [ d | d <- checkDigit]
--7
checkDivide10 ::  Int -> Bool
checkDivide10 n = n `mod` 10 == 0
--add all together
validasi :: [Int] -> Bool
validasi x = checkDivide10 (addAllNumbers (substract9 (multiplyOddPositions (reverseNumbers (dropLastDigit x)))))

reverseNum [] = []
reverseNum (x:xs) = reverseNum xs ++ [x]


multiplyOddBy2 :: [Int] -> [Int]
multiplyOddBy2 [] = []
multiplyOddBy2 [x] = [x*2]
multiplyOddBy2 (x:y:z) = (x*2) : (y) : multiplyOddBy2 z

--multiplyOddBy2 = zipWith (*) (cycle[1,3,5])
