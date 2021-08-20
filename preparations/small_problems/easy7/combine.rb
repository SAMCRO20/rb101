def interleave(array_1, array_2)
  combined_array = []
  index = 0

  loop do
    combined_array << array_1[index]
    combined_array << array_2[index]
    index += 1
    break if index == array_1.size
  end
  combined_array
end

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

p interleave([1, 2, 3], ['a', 'b', 'c'])# == [1, 'a', 2, 'b', 3, 'c']

# Further Exploration
# def interleave(arr_1, arr_2)
#   a.zip(b).flatten
# end