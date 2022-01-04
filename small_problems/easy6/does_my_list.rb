def include?(array, value)
  !!array.find_index(value) # use !! to force the return value to true or false in accordance with the implied promise of the ? in include?.
end

# def include?(array, value)
#   array.each { |element| return true if value == element }
#   false
# end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false