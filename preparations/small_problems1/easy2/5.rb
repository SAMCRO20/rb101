# print "What is your name?\n>>"
# name = gets.chomp

# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

print "What is your name? "
name = gets.chomp

should_yell = !name.delete_suffix!('!').nil?
greeting = "Hello #{name}."

if should_yell
  greeting = "#{greeting} Why are we screaming?".upcase
end

puts greeting