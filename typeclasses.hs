-- class Sm a where  
--     (==) :: a -> a -> Bool  
--     (/=) :: a -> a -> Bool


data TrafficLight = Red | Yellow | Green

data Temperature = Celcius | Farenheit | Kelvin

instance Eq TrafficLight where
    Red == Red = True
    Yellow == Yellow = True
    Green == Green = True
    _ == _ = False

instance Show TrafficLight where  
    show Red = "Red light"  
    show Yellow = "Yellow light"  
    show Green = "Green light"

instance Eq Temperature where
    Celcius == Celcius = True
    Farenheit == Farenheit = True
    Kelvin == Kelvin = True
    _ == _ = False

safeDiv :: Int -> Int -> Maybe Int
safeDiv x 0 = Nothing
safeDiv x y = Just (div x y)

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead xs = Just (head xs)