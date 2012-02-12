#!/usr/bin/env ruby


a = [5,2,4,6,1,3]
puts "0: #{a.to_s}" 

length = a.length - 1
for j in 1..length
  i = j-1
  key = a[j]
  while i >= 0 && a[i] < key
    a[i+1] = a[i]
    a[i] = key
    i = i - 1
  end
  puts "#{j}: #{a.to_s}" 
end
