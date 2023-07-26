module Atv2 
(
listaTuplas, 
prefixos, 
primos, 
tailIf, 
tailGuarda, 
tailCasamento, 
novoMap) 
where

-- Aluno : Guilherme Rivaldy de Sá Pereira 

-- Questão 1
listaTuplas :: [(a,[a])] -> [a]
listaTuplas [] = []
listaTuplas ((x,l): resto) = if length l >=2 then x : listaTuplas resto else listaTuplas resto

-- Questão 2
prefixos :: [a] -> [[a]]
prefixos [] = []
prefixos (x:xs) = [x] : map (x:) (prefixos xs)

-- Questão 3
isprimo :: Int -> Bool
isprimo n = if length ([x | x <- [2..n], mod n x == 0]) == 1 then True else False

primos :: Int -> Int -> [Int]
primos a b = filter isprimo [a..b]

-- Questão 4 (a)
tailIf :: [a] -> [a]
tailIf lista = if null lista || length lista == 1 then [] else drop 1 lista

-- Questão 4 (b)
tailGuarda :: [a] -> [a]
tailGuarda lista
    |null lista  = []
    |length lista == 1 = []
    |otherwise = drop 1 lista

--Questão 4 (c)
tailCasamento :: [a] -> [a]
tailCasamento [] = []
tailCasamento [_] = []
tailCasamento lista = drop 1 lista

-- Questão 5
novoMap :: [b -> b] -> [b] -> [b]
novoMap [] lista = lista
novoMap (x:xs) lista = novoMap xs (map x lista)
