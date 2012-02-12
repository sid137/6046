#!/usr/bin/env runhaskell

list = [3,0,9,4,2,8,6, 7]

insert :: (Ord a) => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys)
  | x > y = y:(insert x ys)
  | x <= y = x:y:ys 

insertion_sort :: (Ord a) => [a] -> [a]
insertion_sort [x] = [x]
insertion_sort (x:xs) = 
  insert x (insertion_sort xs)
