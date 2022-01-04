def average(integers)
  quotient = integers.sum.to_f / integers.length 
           # integers.reduce(:+).to_f / integers.length
  quotient.to_f
end

puts average([1, 6]) == 3.5           # true
puts average([1, 5, 87, 45, 8, 8])    # 25.666666...
puts average([9, 47, 23, 95, 16, 52]) # 40.333333...