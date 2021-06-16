

ends :: [Int] -> [Int]
ends lst = head lst : last lst : []

deduzame :: [Integer] -> [Integer]
deduzame [] = []
deduzame (x:xs) = (2 * x) : deduzame (xs)

deduzame2 :: [Integer] -> [Integer]
deduzame2 [] = []
deduzame2 (x:xs) = if x > 2
  then x : deduzame2 xs 
  else deduzame2 xs


geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela n = (n, n^2) : geraTabela (n-1)

contido :: Char -> String -> Bool
contido _ "" = False
contido ch (x:xs) = ch == x || contido ch xs

translate :: [(Float, Float)] -> [(Float, Float)]
translate [] = []
translate ((x,y):xs) = (x+2, y+2) : translate (xs) 

{-
countLongs :: [String] -> Int
countLongs [] = 0
countLongs (x:xs) = ( (length x) > 5) + countLongs xs
-}

onlyLongs :: [String] -> [String]
onlyLongs [] = []
onlyLongs (x:xs)
 | (length x)>5 = x : onlyLongs xs
 | otherwise = onlyLongs xs
