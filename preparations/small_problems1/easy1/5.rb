# def reverse_sentence(str)
#   str.split.reverse.join(' ')
# end

def reverse_sentence(sentence)
  array = sentence.split(' ')
  res = []
  counter = array.size
  while counter.positive?
    res << array.pop
    counter -= 1
  end
  res.join(' ')
end

puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
puts reverse_sentence('Hello World') == 'World Hello'
