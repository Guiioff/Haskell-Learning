module Lista99
    ( myLast, myButLast,elementAt,myLength,myReverse,
    isPalindrome,compress,pack,encode,dupli,repli
    ) where

-- https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems 

-- Q1
myLast :: [a] -> a
myLast l = l !! (length l - 1)

--Q2
myButLast :: [a] -> a
myButLast [] = error "Lista Vazia"
myButLast (_ : xs) = xs !! (length xs - 2)

--Q3
elementAt ::[a] -> Int -> a
elementAt l pos = l !! (pos - 1)

--Q4
myLength :: [a] -> Int
myLength [] = 0
myLength (_ : xs) = 1 + myLength xs

--Q5
myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse l = myLast l : myReverse (init l)

--Q6
isPalindrome :: Eq a => [a] -> Bool
isPalindrome l
  | l == myReverse l = True
  | otherwise = False

--Q8
compress :: Eq a => [a] -> [a]
compress [] = error "lista vazia"
compress [x] = [x]
compress (x : xs)
  | x == head (xs) = compress (xs)
  | otherwise = x : compress (xs)

-- Q9
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

--Q10
encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = (length $ x : takeWhile (==x) xs, x) : encode (dropWhile (==x) xs)

--Q14
dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x : x : dupli xs
