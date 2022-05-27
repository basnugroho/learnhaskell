localMaxima :: [Int] -> [Int]
localMaxima (x:rest@(y:z:_))
  | y > x && y > z = y : localMaxima rest
  | otherwise      = localMaxima rest
localMaxima _ = []