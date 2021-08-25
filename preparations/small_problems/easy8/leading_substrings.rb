def leading_substrings(string)
  letters_array = [string[0]]
  index = -1
  string.each_char do |x|
    letters_array << letters_array[index] + x if x != string[0]
    index += 1
  end
  letters_array
end

# def leading_substrings(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']