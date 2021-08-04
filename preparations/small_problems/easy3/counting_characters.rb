print "Please write a word or multiple words: "
input = gets.chomp
num_of_characters = input.delete(' ').length

puts "There are #{num_of_characters} characters in \"#{input}.\""