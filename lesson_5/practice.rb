# [[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
#   arr.select do |item|
#     if item.to_s.to_i == item # if it's an integer
#       item > 13
#     else
#       item.size < 6
#     end
#   end
# end
# # => [[27], ["apple"]]

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end
# preparation.rb

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# new_arr = arr.map do |inner|
#             inner.sort do |a, b|
#               b <=> a
#             end
#           end

# p new_arr

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr.map! do |sub_array|
#   sub_array.select do |n|
#     n % 3 == 0
#   end
# end

# p arr

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# hsh = Hash[*arr.flatten(1)]
# puts "#{hsh.inspect}"

# hsh1 = {}
# arr.each do |item|
#   hsh1[item[0]] = item[1]
# end
# p hsh

