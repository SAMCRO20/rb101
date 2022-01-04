def check_number(number)
  number == number.to_s.to_i.to_s
end

def number_conversion(size)
  case size
  when 0 then return "1st"
  when 1 then return "2nd"
  when 2 then return "3rd"
  when 3 then return "4th"
  when 4 then return "5th"
  when 5 then return "last"
  end
end

number_array = []
input = nil

# Creates the Array of 5 Numbers
loop do
  num_word = number_conversion(number_array.size)
  puts "==> Enter the #{num_word} number."
  loop do
    input = gets.chomp
    break if check_number(input)
    puts "That is not an integer! Enter the #{num_word} number."
  end
  input = input.to_i
  break if number_array.size == 5
  number_array.push(input)
end

if number_array.include?(input)
  puts "The number #{input} appears in #{number_array}."
else
  puts "The number #{input} does not appear in #{number_array}."
end