def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

#Further exploration

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string('xyz') == 'yzx'

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

p rotate_integer(38475) == 84753

