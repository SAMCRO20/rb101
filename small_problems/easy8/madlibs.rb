def asker(string)
  puts "Enter a #{string}: "
end

def output_madlib(noun, verb, adjective, adverb)
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

def error_message
  puts "that does not appear valid..."
end

def input_handler(string)
  loop do
    return string if string.match?(/[a-zA-z]/)
    error_message
    string = gets.chomp
  end
end

asker("noun")
noun = input_handler(gets.chomp)
asker("verb")
verb = input_handler(gets.chomp)
asker("adjective")
adjective = input_handler(gets.chomp)
asker("adverb")
adverb = input_handler(gets.chomp)
output_madlib(noun, verb, adjective, adverb)

