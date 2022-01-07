CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

# VOWELS1 = 'aeiou'
# VOWELS2 = "AEIOU"

# alphabets = ("A".."Z").to_a + ("a".."z").to_a
# alphabets = alphabets.join
# alphabets = alphabets.delete(VOWELS1)
# alphabets = alphabets.delete(VOWELS2)

# CONSONANTS = alphabets.chars


# def double_consonants(str)

#   str_arr = str.chars
#   result = []

#   str_arr.map! do |x| 
#     if CONSONANTS.include?(x)
#       result << (x * 2)
#     else
#       result << x
#     end
#   end

#   result.join

# end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""