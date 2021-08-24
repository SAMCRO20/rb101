def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map {|pair| pair.inject(&:*)}.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([1, 2], [40, 20])