# def multiply_list(array_1, array_2)
#   multiplied_array = []
#   index = 0

#   loop do
#     multiplied_array << array_1[index] * array_2[index]
#     index += 1
#     break if index == array_1.size
#   end
#   multiplied_array
# end
def multiply_list(array_1, array_2)
  array_1.zip(array_2).map {|pair| pair.inject(&:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]