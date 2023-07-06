module Lista1
    ( iguais,maioresMedia,potencia2, potencia4, 
    ouExclusivo, xMaior,xMenor, somaInclu,somaExclu,multiplos,multSum, mod2, 
    sequen, arranjo, maiorLista
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

--Q8
multiplos :: Int -> Int -> Int -> [Int]
multiplos _ _ _ = []
multiplos n1 n2 n3
    | n1 == n2 = []
    | n1 < n2 = [x | x <- [n1 .. n2], mod x n3 == 0]
    | n1 > n2 = [x | x <- [n2 .. n1], mod x n3 == 0]

--Q9
multSum :: Num a => Int -> a -> a
multSum x y = sum (replicate x y)

--Q10
mod2 :: Int -> Int -> Int
mod2 x y = if x > y then mod2 (x-y) y else x

--Q11
sequen :: Floating a => Int -> a 
sequen pos = if pos == 1 then sqrt 6 else sqrt(6 + sequen (pos-1))

--Q12
fatorial :: Int -> Int
fatorial x = product [1 .. x]

arranjo :: Int -> Int -> Int
arranjo n p = fatorial n `div` fatorial (n-p)

--Q13
posicao :: Eq a => [a] -> a -> Int
posicao [] _ = -1
posicao (x:xs) pos = if x == pos then 1 else 1 + posicao xs pos

maiorLista :: [Int] -> (Int,Int)
maiorLista l = (maior, posicao l maior)
    where
        maior = maximum l


