module Lista1
    ( iguais,maioresMedia,potencia2, potencia4, 
    ouExclusivo, xMaior,xMenor, somaInclu,somaExclu
    ) where

-- Q1
iguais :: Eq a => a -> a -> a -> Int
iguais a b c
    | a == b && b == c = 3
    | a == b || b == c || a == c = 2
    | otherwise = 0

-- Q2
media3 :: Fractional a => a -> a -> a -> a
media3 x y z = (x+y+z)/3

maioresMedia :: (Num a1, Ord a2, Fractional a2) => a2 -> a2 -> a2 -> a1
maioresMedia x y z = (if x > media then 1 else 0) + (if y > media then 1 else 0) + (if z > media then 1 else 0)
    where
        media = media3 x y z

-- Q3
potencia2 :: Num a => a -> a
potencia2 x = x * x

-- Q4
potencia4 :: Num a => a -> a
potencia4 x = potencia2 x * potencia2 x

-- Q5
ouExclusivo :: Bool -> Bool -> Bool
ouExclusivo a b =  (a || b) && not(a && b)

-- Q6
delta :: Floating a => a -> a -> a -> a
delta a b c = b*b - 4*a*c

xMaior :: Floating a => a -> a -> a -> a
xMaior a b c = (-b + sqrt(delta a b c)) / (2 * a)

xMenor :: Floating a => a -> a -> a -> a
xMenor a b c = (-b - sqrt(delta a b c)) / (2 * a)

-- Q7
somaInclu :: Int -> Int -> Int
somaInclu a b
    | a == b = 0
    | a < b = sum [a..b]
    | otherwise = sum [b .. a]

somaExclu :: Int -> Int -> Int
somaExclu a b 
    | a == b = 0
    | a < b = sum [a+1 .. b-1]
    | otherwise = sum [b+1 .. a-1]


