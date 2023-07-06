module ListaRecursao
(
    fatorial, somar, (@), euclides, funcaoAnd, 
    funcaoConcat, funcaoReplicate, funcaoSelecionar, 
    funcaoElem, merge, somaLista, tamanhoLista, lastElemento, mergeSort
) where

--Q1
fatorial :: Int -> Int
fatorial n
    |n == 0 = 1
    | otherwise = n * fatorial (n - 1)

--Q2
somar :: Int -> Int
somar n
    | n <= 0 = 0
    | otherwise = n + somar (n-1)

--Q3
(@) :: Int -> Int -> Int
(@) base expoente
    | expoente == 1 = base
    | otherwise = base * (@) base (expoente-1)

--Q4
euclides :: Int -> Int -> Int
euclides a b
    | a == b = a
    | maior <= menor = maior
    | otherwise= euclides menor (maior - menor)
    where
        maior = max a b
        menor = min a b

--Q5 (a)
funcaoAnd :: [Bool] -> Bool
funcaoAnd [] = True
funcaoAnd (x:xs) = if x then funcaoAnd xs else False

--Q5 (b)
funcaoConcat :: [[a]] -> [a]
funcaoConcat [] = []
funcaoConcat l = head l ++ funcaoConcat (tail l)

--Q5 (c)
funcaoReplicate :: Int -> a -> [a]
funcaoReplicate num a
    | num == 0 =[]
    | otherwise = a : funcaoReplicate (num-1) a

--Q5 (d)
funcaoSelecionar :: [a] -> Int -> a
funcaoSelecionar [] _ = error "Lista Vazia"
funcaoSelecionar (x:xs) pos
    | pos  == 1 = x
    | otherwise = funcaoSelecionar xs (pos -1)

--Q5 (e)
funcaoElem :: Eq a => a -> [a] -> Bool
funcaoElem _ [] = False
funcaoElem valor (x:xs)
    | valor == x = True
    | otherwise = funcaoElem valor xs

--Q6
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

-- Q7
mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs | tamanho >= 1 = merge (mergeSort comeco) (mergeSort fim)
                where
                    tamanho = length xs `div` 2
                    comeco = take tamanho xs
                    fim = drop tamanho xs

--Q8 (a)
somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

--Q8 (b)
tamanhoLista :: [a] -> Int
tamanhoLista [] = 0
tamanhoLista (_:xs) = 1 + tamanhoLista xs

--Q8 (c)
lastElemento :: [a] -> a
lastElemento [] = error "Lista Vazia"
lastElemento [x] = x
lastElemento (_ : xs) = lastElemento xs

