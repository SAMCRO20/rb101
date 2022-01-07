=begin
Problem:
  method takes a string with one or more spaces
  returns a hash that shows the number of words of different sizes
  words = any string of characters that do not include a space
    input: a string of words delimited by spaces
    output: hash with key of length of word and value of the instances or that length of word
Examples:
  word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
  word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
  word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
  word_sizes('') == {}

DS: input: string of words delimited by spaces
    output: hash key=word.size, value=appearance

Algo:
    define method with argument
  initiallize hash::new with starting value of 0 instead of nil to skip exception
  split each word of the input
  then with the new hash, key it to word size and add to that key each instance of a word of similar size
  finish with the return of the hash


  
=end

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}