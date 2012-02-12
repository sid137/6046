#!/usr/bin/env ruby


a = [5,2,4,6,1,3]
puts "0: #{a.to_s}" 


length = a.length - 1
for i in 0..length   # set swapper
  key = a[i]
  min = nil

  for j in i+1..length # Find smallest
    if min.nil? || a[j] < min 
      min = a[j] 
      location = j
    end
  end
  if min && min < key
    a[i] = min
    a[location] = key
  end
  puts "#{i+1}: #{a.to_s}" 
end
