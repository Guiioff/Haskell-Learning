module Funções
    ( 
    ) where 

{-
1. abs (retorna o valor absoluto de um número)
2. ceiling (retorna o menor inteiro não menor do que o argumento)
3. cos (retorna o cosseno de um número descrito em radianos)
4. div (retorna o quociente inteiro da divisão de dois inteiros)
5. exp (retorna o valor correspondente a e^n)
6. floor (retorna o maior inteiro não maior do que o argumento)
7. lcm (retorna o mínimo múltiplo comum entre dois inteiros)
8. mod (retorna o resto da divisão de dois inteiros)
9. pi (retorna o valor de pi)
10. round (retorna o inteiro mais próximo do argumento)
11. sin (retorna o seno de um número descrito em radianos)
12. sqrt (retorna a raiz quadrada do argumento)
13. tan (retorna a tangente de um número descrito em radianos)
14. truncate (retorna o inteiro sem a parte fracionária do número)
-}


{-
1. head (obtém o primeiro elemento de uma lista)
head [1,2,3,4,5] ---> 1

2. tail (obtém a cauda da lista, sem seu primeiro elemento)
tail [1,2,3,4,5] ---> [2,3,4,5]

3. !! (seleciona o n-ésimo elemento de uma lista (iniciando em 0))
[1,2,3,4,5] !! 2 ---> 3

4. drop (remove os n primeiros elementos de uma lista)
drop 2 [1,2,3,4,5] ---> [3,4,5]

5. take (seleciona os n primeiros elementos de uma lista)
take 2 [1,2,3,4,5] ---> [1,2]

6. product (calcula o produto de todos os elementos de uma lista de numeros)
product [1,2,3,4,5] ---> 120

7. ++ (concatena duas listas)
[1,2,3,4,5] ++ [6,7,8,9,10] ---> [1,2,3,4,5,6,7,8,9,10]

8. reverse (inverte uma lista)
reverse [1,2,3,4,5] ---> [5,4,3,2,1]

9. fst (retorna o primeiro item de uma tupla)
fst (1,2) ---> 1

10. snd (retorna o segundo item de uma tupla)
snd (1,2) ---> 2

11. takewhile
takeWhile (<3) [1,2,3,4,5] ---> [1,2]

12. dropwhile
dropWhile (<3) [1,2,3,4,5] ---> [3,4,5]

13. init (retira o ultimo elemento de uma lista)
init [1,2,3] ---> [1,2]

14. zip
zip [1,2,3] [9,8,7] ---> [(1,9),(2,8),(3,7)]

15. unzip
unzip [(1,2),(2,3),(3,4)] ---> ([1,2,3],[2,3,4])

16. replicate (cria uma lista do tamanho do primeiro arg e os itens que a contém são do segundo arg)
replicate 3 5 ---> [5,5,5]

17. odd (verifica se um número é ímpar)
odd 13 --> True

18. even (verifica se um número é par)
even 12 --> True

19. maximum (retorna o maior valor de uma lista)
maximum [3,2,6,4,1,2,3] ---> 6

20. minimum (retorna o menor valor de uma lista)
minimum [3,2,6,4,1,2,3] ---> 1

21. null [verifica se uma lista é vazia]
null [] ---> True

22. map (retorna uma lista feita aplicando a função (primeiro arg) em todos os itens de uma lista(segundo arg))
map abs [-1,-3,4,-12] ---> [1,3,4,12]

23. last (retorna o ultimo elemento de uma lista)
last[1,2,3] ---> 3

24. elem (verifica se um elemento está contido em uma lista)
elem 1 [1,2,3,4,5] ---> True

25. filter (retorna uma lista construida a partir dos elementos da lista (segundo arg) filtrados a partir da função (primeiro arg))
filter (>5) [1,2,3,4,5,6,7,8] ---> [6,7,8]

26. foldr (começa a aplicar a função acumuladora do lado direito da lista)
foldr (+) 0 [1,2,3,4,5] ---> 15

27. foldl (começa a aplicar a função acumuladora do lado esquerdo da lista)
foldl (*) 1 [1,2,3,4,5] ---> 120



-}