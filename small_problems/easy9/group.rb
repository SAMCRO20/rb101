result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end
#--------------------------------------------------
# def anagrams(words)
#   character_sets = words.map { |word| word.chars.sort }.uniq

#   anagram_lists = character_sets.map do |set|
#                     words.select { |word| set == word.chars.sort }
#                   end

#   anagram_lists.each { |list| p list }
# end
#--------------------------------------------------
# unique_words = words.map { |word| word.chars.sort.join }.uniq

# unique_hash = Hash[unique_words.each_with_object([]).to_a]

# words.each do |word| 
#     abc_word = word.chars.sort.join
#     unique_hash[abc_word] += [word] if unique_hash.include?(abc_word)
# end

# unique_hash.each_value { |v| p v }
#--------------------------------------------------
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']