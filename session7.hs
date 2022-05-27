import Distribution.Simple.Utils (xargs)

doStuff :: [Int] -> Int 
doStuff [] = 0
doStuff [_] = 0
doStuff (x1:x2:_) = x1 + x2

-- Maybe
data Maybe a = Nothing | Just a

-- safeHead :: [a] -> Maybe a
-- safeHead [] = Nothing
-- safeHead [x] = x
-- safeHead (x:xs) = Just x

