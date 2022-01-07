def sum(integer)
  array = integer.digits #returns digits as array with least sigdig first

  array.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum(12_345) # prints 15 return nil