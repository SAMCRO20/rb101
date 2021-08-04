first_number = []
second_number = []

puts ">> Enter the first number:"
print "> "
first_number = gets.chomp.to_f

loop do
  puts ">> Enter the second number:"
  print "> "
  second_number = gets.chomp.to_f
  break if second_number != 0
  puts ">> Please enter a number other than zero..."
end

puts "==> #{first_number} + #{second_number} = #{first_number + second_number}"
puts "==> #{first_number} - #{second_number} = #{first_number - second_number}"
puts "==> #{first_number} * #{second_number} = #{first_number * second_number}"
puts "==> #{first_number} / #{second_number} = #{first_number / second_number}"
puts "==> #{first_number} % #{second_number} = #{first_number % second_number}"
puts "==> #{first_number} ** #{second_number} = #{first_number ** second_number}"