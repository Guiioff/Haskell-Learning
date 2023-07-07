module Atv1 (
myMap1, myMap2, posicao, subString, mySplit) 
where

{- Questão 2 -}

-- Com Recursão
myMap1 :: (a -> b) -> [a] -> [b]
myMap1 _ [] = []
myMap1 func (x : xs) = func x : myMap1 func xs

-- Com compreensão de listas
myMap2 :: (a -> b) -> [a] -> [b]
myMap2 _ [] = []
myMap2 func lista = [func x | x <- lista]

{- Questão 3 -}
posicao :: Eq a => [a] -> a -> Int
posicao [] _ = 0
posicao (x : xs) ch
  | x == ch = 1
  | otherwise = 1 + posicao xs ch

subString :: Eq a => [a] -> a -> a -> [a]
subString lista ini fim = drop (posicao lista ini - 1) limite
  where
    limite = take (posicao lista fim) lista

{- Questão 4 -}
mySplit :: Eq a => [a] -> a -> [[a]]
mySplit lista ch
  | elem ch lista == False = [lista]
  | otherwise = filter (/= ch) (take (posicao lista ch) lista) : mySplit (drop (posicao lista ch) lista) ch