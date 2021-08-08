def swap(string)
  rev_first_last_word = []            #Create a new array

  split_string = string.split(' ')    #Split string into words

  split_string.each do |word|
    if word.size == 1
      rev_first_last_word.push(word)
    else
      word_array = []
      word_array.push(word[-1])
      word_array.push(word[1..-2])
      word_array.push(word[0])
      rev_first_last_word.push(word_array.join(""))
    end
  end

  rev_first_last_word.join(" ")
end

puts swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') #== 'ebcdA'
puts swap('a') #== 'a'