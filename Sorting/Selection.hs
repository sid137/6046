module Sorting.Selection
( selection_sort
) where
import Data.List


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

