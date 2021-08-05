# Problem - 
  #  method with two arguments
  #  determine longest of the two
  #  return result concatenating short, long, then short
  #  assumptions = 
      # string differnent lengths
      # string class

# Examples - 
# short_long_short('abc', 'defgh') == "abcdefghabc"
  # a-z
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
  # empty string acceptable

# Data Structure
  # first determine lengths against one another
  # then place short-long-short with concatenation

# Algo
  # if statements for test and concatentation
  # case when statement for test and concatenation
  # ternary operator
  # multiple methods written and called to complete the process
  # utilize string#length or string#size
    # Chosen 1st attempt:
    # def method short_long_short to accept str1 and str2
    # ternary op

# Code
def short_long_short(str1, str2)
  str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"