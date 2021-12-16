=begin
P
method takes one argument
 - string of one or more words
returns the string with words of 5 or more with characters reversed
explicit
each string will consist of letters and spaces
spaces included when one or more word is present

implicit
test to see if word is >=5 characters

Examples
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

Data structures/Algorithm
- def method to take string
- initialize a finished_arr to collect substrings
- split the string into an array
- loop through the array to a conditional with parameter word
- if word >= 5 
  - reverse characters and add to finished_arr
- else add to finished arr
  join with finished with iteration

=end

def reverse_words(str)
  finished_arr = []
  arr = str.split
  arr.each do |word|
    if word.size >= 5
      finished_arr << word.reverse!
    else
      finished_arr << word
    end
  end
  finished_arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
