#!/usr/bin/env runhaskell

list = [3,0,9,4,2,8,6, 7]

insert :: (Ord a) => a -> [a] -> [a]
insert x [] = [x]
insert x list@(y:ys)
  | x > y = y:(insert x ys)
  | otherwise = x:list

insertion_sort :: (Ord a) => [a] -> [a]
insertion_sort [x] = [x]
insertion_sort (x:xs) = 
  insert x (insertion_sort xs)



reverse_insert :: (Ord a) => a -> [a] -> [a]
reverse_insert x [] = [x]
reverse_insert x (y:ys) 
  | x > y = x:y:ys
  | otherwise = y:( reverse_insert x ys)

reverse_insertion_sort :: (Ord a) => [a] -> [a]
reverse_insertion_sort [x] = [x]
reverse_insertion_sort (x:xs) =
  reverse_insert x (reverse_insertion_sort xs)

