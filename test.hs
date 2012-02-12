#!/usr/bin/env runhaskell

list = [3,0,9,4,2,8,6, 7]

factorial 0 = 1
factorial n = n * factorial (n-1)

play :: [a] -> [a]
play (x:xs) = x:xs

max' :: (Ord a) => [a] -> a
max' [x] = x
max' (x:xs) 
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = max' xs
  
min' :: (Ord a) => [a] -> a
min' [x] = x
min' (x:xs) = 
  let minTail = min' xs in
      if x < minTail 
        x
      else
        minTail
         
insertion_sort xs = reverse xs

main = do
  putStrLn "Hi"
