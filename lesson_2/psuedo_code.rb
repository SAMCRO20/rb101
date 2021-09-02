# def a method sum for two arguments
#   add the two arguments that are passed to the method of to_i
# end the method

def sum(a, b)
  a.to_i() + b.to_i()
end

p sum(3, 4)

# START
# # a method that takes an array of strings, and returns a string that is all those strings concatenated together
# define a method concat that takes an array of strings
# join with a space between
# END
def combine(array)
  array.join(' ')
end

p combine(['to', 'be', 'or', 'not', 'to', 'be'])

# START
# a method that takes an array of integers, and returns a new array with every other element
# define even_array(array)
# SET result = []
# iterate through array and push all even index
# end
def even_array(array)
  result =[]
  array.each_with_index { |ele, i| result << ele if i % 2 == 0 }

  result
end

p even_array([2,3,4,5,3,4,5,2,1])