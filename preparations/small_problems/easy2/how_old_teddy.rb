age_range = (20..200).to_a

puts "Who's age are we guessing? "
person = gets.chomp
person.empty? ? person = 'Teddy' : person = person

puts "#{person} is #{age_range.sample} years old!"