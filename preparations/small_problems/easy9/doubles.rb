def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

# def double_number?(number)
#   numstring = number.to_s
#   if numstring.length.even?
#     midpoint = numstring.length/2
#     if numstring.slice(0, midpoint) == numstring.slice(-midpoint, midpoint)
#       return true
#     end
#   end

#   return false
# end

# def twice(number)
#   double_number?(number) ? number : 2*number
# end

# def double_num(number)
#   size = (number.to_s.size / 2)
#   arr = number.to_s.chars
#   arr.first(size).join.to_i == arr.last(size).join.to_i
# end

# def twice(number)
#   if double_num(number) && number.to_s.size.even?
#     number
#   else
#     number * 2
#   end
# end

p twice(37)# == 74
p twice(44)# == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10