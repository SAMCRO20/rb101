name = nil

def greeting
  print ">> What is your name? "
  name = gets.chomp
  loud_talking = name.upcase

  if name[-1] == "!"
    name = name.chop!
    puts "HELLO #{loud_talking}! WHY ARE WE SCREAMING?!"
  else
    puts "Hello #{name}."     
  end
end

greeting