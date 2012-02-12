module Sorting
( insertion_sort
, reverse_insertion_sort
, selection_sort
, reverse_selection_sort
) where

import Data.List
import Debug.Trace

list = [3,0,9,4,2,8,6, 7]

insertion :: (Ord a) => a -> [a] -> [a]
insertion x [] = [x]
insertion x list@(y:ys)
  | x > y = y:(insertion x ys)
  | otherwise = x:list

insertion_sort :: (Ord a) => [a] -> [a]
insertion_sort [x] = [x]
insertion_sort (x:xs) = 
  insertion x (insertion_sort xs)



reverse_insert :: (Ord a) => a -> [a] -> [a]
reverse_insert x [] = [x]
reverse_insert x (y:ys) 
  | x > y = x:y:ys
  | otherwise = y:( reverse_insert x ys)

reverse_insertion_sort :: (Ord a) => [a] -> [a]
reverse_insertion_sort [x] = [x]
reverse_insertion_sort (x:xs) =
  reverse_insert x (reverse_insertion_sort xs)



  

selection_sort :: (Ord a) => [a] -> [a]
selection_sort [x] = [x]
selection_sort list@(x:xs) = 
  smallest:(selection_sort $ delete smallest list)
  where smallest = minimum list

reverse_selection_sort :: (Ord a) => [a] -> [a]
reverse_selection_sort [x] = [x]
reverse_selection_sort list@(x:xs) = 
  largest:(reverse_selection_sort $ delete largest list)
  where largest = maximum list

