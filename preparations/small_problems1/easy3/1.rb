# searching 101

def clear_screen
  system('clear')
end

def prompt(str)
  puts ">> #{str}"
end

arr_of_numbers = []

clear_screen

prompt("Enter the 1st number:")
first = gets.chomp.to_i
arr_of_numbers << first

clear_screen

prompt("Enter the 2nd number:")
second = gets.chomp.to_i
arr_of_numbers << second

clear_screen

prompt("Enter the 3rd number:")
third = gets.chomp.to_i
arr_of_numbers << third

clear_screen

prompt("Enter the 4th number:")
fourth = gets.chomp.to_i
arr_of_numbers << fourth

clear_screen

prompt("Enter the 5th number:")
fifth = gets.chomp.to_i
arr_of_numbers << fifth

clear_screen

prompt("Enter the last number:")
last = gets.chomp.to_i

clear_screen

if arr_of_numbers.include?(last) 
  prompt("The number #{last} appears in #{arr_of_numbers}.")
else
  prompt("The number #{last} does not appear in #{arr_of_numbers}.")
end

# ORDINALS = %w[1st 2nd 3rd 4th 5th last]

# numbers = ORDINALS.each_with_object([]) do |ord, nums|
#   puts "==> Enter the #{ord} number:"
#   nums << gets.chomp.to_i
# end

# last = numbers.pop
# appears = numbers.count(last) > 0 ? 'appears' : 'does not appear'

# puts "The number #{last} #{appears} in #{numbers}."