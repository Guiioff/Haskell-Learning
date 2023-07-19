module ListaAltaOrdem 
(listaImpares, posicaoLista, repete1, repete2, palindromo,
listaFibo, funcaoAll, funcaoAny, funcaoTakewhile, funcaoDropwhile,
mapFoldr, filterFoldr, dec2int, mapUnfold, altMap, iterateUnfold,
curry', uncurry',
) 
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
mapFoldr :: Foldable t1 => (t2 -> a) -> t1 t2 -> [a]
mapFoldr func = foldr (\x y -> func x : y) []

filterFoldr :: Foldable t => (a -> Bool) -> t a -> [a]
filterFoldr func =  foldr(\x y -> if func x then x : y else y) []

--Q8
dec2int :: (Foldable t, Num b) => t b -> b
dec2int l = foldl (\x y -> x * 10 + y) 0 l

--Q9
unfold :: (t -> Bool) -> (t -> a) -> (t -> t) -> t -> [a]
unfold p h t x 
       | p x = []
       | otherwise = h x : unfold p h t (t x)

mapUnfold :: Eq b => (b -> a) -> [b] -> [a]
mapUnfold f = unfold (==[]) (f . head) tail


iterateUnfold :: (a -> a) -> a -> [a]
iterateUnfold = unfold (const False) id 

--Q10
altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f1 f2 (x:xs) = f1 x : altMap f2 f1 xs 

--Q11
curry' :: ((a, b) -> t) -> a -> b -> t
curry' f x y = f (x,y)

uncurry' :: (t1 -> t2 -> t3) -> (t1, t2) -> t3
uncurry' f (x,y) = f x y

