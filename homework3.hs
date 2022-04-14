test :: [Int]
test = [4,5,5,6,7,3,7,5,8,6,8,9,9,8,5,5]
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
checkDivide10 ::  
checkDivide10 n = n `mod` 10 == 0
--add all together
answer = checkDivide10 (addAllNumbers (substract9 (multiplyOddPositions (reverseNumbers (dropLastDigit test)))))

reverseNum [] = []
reverseNum (x:xs) = reverseNum xs ++ [x]


multiplyOddBy2 :: [Int] -> [Int]
multiplyOddBy2 [] = []
multiplyOddBy2 [x] = [x*2]
multiplyOddBy2 (x:y:z) = (x*2) : (y) : multiplyOddBy2 z

--multiplyOddBy2 = zipWith (*) (cycle[1,3,5])
