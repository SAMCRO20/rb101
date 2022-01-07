=begin
def method short_long_short
  - takes two strings as arguments
  -determine longest of the two
  - returns result of concatenating the short-long-short
assume they are different lengths

=end

# def short_long_short(str1, str2)
#   if str1.size > str2.size
#     str2 + str1 + str2
#   else
#     str1 + str2 + str1
#   end
# end

def short_long_short(str1, str2)
  str1.size > str2.size ? str2 + str1 + str2 : str1 + str2 + str1
end

p short_long_short('abc', 'defgh')# == "abcdefghabc"
p short_long_short('abcde', 'fgh')# == "fghabcdefgh"
p short_long_short('', 'xyz')# == "xyz"
