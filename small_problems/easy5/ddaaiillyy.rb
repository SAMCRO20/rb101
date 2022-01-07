# problem
#   given a string, return a string
#   all duplicate characters are condensed
#   duplicates only pertain to characters right next to one another
#     input string with duplicates or not
#     output string without duplicates

# examples
#   crunch('ddaaiillyy ddoouubbllee') == 'daily double'
#   crunch('4444abcabccba') == '4abcabcba'
#   crunch('ggggggggggggggg') == 'g'
#   crunch('a') == 'a'
#   crunch('') == ''

# data structure
#   explicit
#   implicit

# algo
#   def crunch to accept argument
#   initiate new string crunched
#   for characters in argument
#     add to crunched unless that character is the same as the last one
#   return crunched string

def crunch(string)
  crunched = String.new

  for char in string.chars
    crunched << char unless char == crunched.chars.last
  end

  crunched
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''