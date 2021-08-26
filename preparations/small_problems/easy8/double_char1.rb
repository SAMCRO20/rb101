def repeater(string)
  result = []
  string.chars do |char|
    result << char * 2
  end
  result.join('')
end

# def repeater(string)
#   result = ''
#   string.each_char do |char|
#     result << char << char
#   end
#   result
# end

# def repeater(string)
#   string.gsub(/./) { |char| char * 2 }
# end

p repeater('Hello')# == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''