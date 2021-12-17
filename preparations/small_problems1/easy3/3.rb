print "Please write a word or multiple words: "
string = gets.chomp

puts "There are #{string.delete(' ').chars.length} characters in \"#{string}\"."