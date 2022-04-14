

addOneToAll :: (Num a) => [a] -> [a]
addOneToAll a = [ c + 1 | c <- a ]

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

data Color = Red | Green | Blue
data Person = Person String Int Color
baskoro :: Person
baskoro = Person "Bas" 23 Red
whatIsNameField :: Person -> String
whatIsNameField p@(Person n _ _) = "The name field is " ++ n

-- data type
data IntList = Empty | Cons Int IntList
    deriving Show

listKu :: IntList
listKu = Cons (1) ( Cons (2) ( Cons (3) Empty))

listNeg :: IntList
listNeg = Cons (-4) ( Cons (-5) ( Cons (-6) Empty))

-- kurang satu (recursive)
kurang1 :: IntList -> IntList
kurang1 Empty  = Empty
kurang1 (Cons x xs) = Cons (x-1) (kurang1 xs)

-- untuk input mapping
kurangi1 x = x -1

mapIntList :: (Int -> Int) -> IntList -> IntList
mapIntList _ Empty  = Empty
mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)

-- filtering
keepOnlyPositve :: IntList -> IntList
keepOnlyPositve Empty = Empty
keepOnlyPositve (Cons x xs)
    | x > 0 = Cons x (keepOnlyPositve xs)
    | otherwise = keepOnlyPositve xs

keepOnlyEven :: IntList -> IntList
keepOnlyEven Empty = Empty
keepOnlyEven (Cons x xs)
    | even x = Cons x (keepOnlyEven xs)
    | otherwise = keepOnlyEven xs

filterIntList :: (Int -> Bool) -> IntList -> IntList
filterIntList _ Empty = Empty
filterIntList p (Cons x xs)
    | p x = Cons x (filterIntList p xs)
    | otherwise  = filterIntList p xs

-- polymorphic list
data List t = E | C t (List t)


-- mapIntList :: (Int -> Int) -> IntList -> IntList
-- mapIntList _ Empty       = Empty
-- mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)

-- -- input : Cons 1 (Cons 2 (Cons 3 Empty))
-- -- output: Cons 2 (Cons 4 (Cons 6 Empty))
-- kaliDua :: IntList -> IntList
-- kaliDua list = mapIntList (*2)

-- Maybe
data Maybe a = Nothing | Just a
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead [x] = x
safeHead [x:xs] = x


data Person = Person String Int Color
    deriving Show

data Color = Red | Black | Green | Blue | Pink
    deriving Show

data PersonOrColor = CombinedPerson Person 
                   | CombinedColor Color
    deriving Show

orang = Person "Telkom" 3 Blue
warna = Red

personNameOrColorName :: PersonOrColor -> String
personNameOrColorName (CombinedPerson (Person name _ _)) = name 
personNameOrColorName (CombinedColor Red) = "Red"
personNameOrColorName (CombinedColor Black) = "Black"
personNameOrColorName (CombinedColor Green) = "Green"
personNameOrColorName (CombinedColor Blue) = "Blue"
personNameOrColorName (CombinedColor Pink) = "Pink"
