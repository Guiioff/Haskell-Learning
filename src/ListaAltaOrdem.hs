module ListaAltaOrdem 
(listaImpares, posicaoLista, repete1, repete2, palindromo,
listaFibo, funcaoAll, funcaoAny, funcaoTakewhile, funcaoDropwhile) 
where

insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)
  where
    insert :: Ord a => a -> [a] -> [a]
    insert x [] = [x]
    insert x (y:ys)
      | x <= y    = x : y : ys
      | otherwise = y : insert x ys

                    
--Q1
listaImpares :: Integral a => [a] -> [a]
listaImpares l = insertionSort (filter odd l)

--Q2
posicaoLista :: Int -> [a] -> a
posicaoLista _ [] = error "listaVazia"
posicaoLista num (x:xs)
    | num == 0 = x
    | otherwise = posicaoLista (num - 1) xs

--Q3
repete1 :: Int -> [[Int]]
repete1 n 
    |n == 1 = [[1]]
    |otherwise = [n | _ <- [1 .. n]] : repete1 (n-1)

repete2 :: Int -> [Int]
repete2 n 
    |n == 1 = [1]
    |otherwise = [n | _ <- [1 .. n]] ++ repete2 (n-1)

--Q4
inverter :: [a] -> [a] -> [a]
inverter [] l2 = l2
inverter (x:xs) l2 = inverter xs (x:l2)

palindromo :: Eq a => [a] -> Bool
palindromo l = l == inverter l []

--Q5
fibo :: Int -> Int
fibo n
    | n == 1 = 0
    | n == 2 = 1
    | otherwise = fibo(n - 1) + fibo(n-2)

listaFibo :: Int -> [Int]
listaFibo 1 = [0]
listaFibo num = insertionSort (fibo num : listaFibo (num-1))

--Q6 (a)
funcaoAll :: (a -> Bool) -> [a] -> Bool
funcaoAll _ [] = True
funcaoAll func (x:xs)
    | func x = funcaoAll func xs
    | otherwise = False

--Q6 (b)
funcaoAny :: (a -> Bool) -> [a] -> Bool
funcaoAny _ [] = False
funcaoAny func (x:xs)
    | func x || funcaoAny func xs = True 
    | otherwise = False

--Q6 (c)
funcaoTakewhile :: (a -> Bool) -> [a] -> [a]
funcaoTakewhile _ [] = []
funcaoTakewhile func (x:xs) = if func x then x : funcaoTakewhile func xs else []

--Q6 (d)
funcaoDropwhile :: (a -> Bool) -> [a] -> [a]
funcaoDropwhile _ [] = []
funcaoDropwhile func (x:xs) = if func x then funcaoDropwhile func xs else x : xs

--Q7

