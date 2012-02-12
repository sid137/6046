import Data.List

list = [3,0,9,4,2,8,6, 7]

-- Θ(n)
-- smallest :: (Ord a) => [a] -> a
-- smallest [x] = x
-- smallest (x:xs) = min x $ smallest xs
  

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

