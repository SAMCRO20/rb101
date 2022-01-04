def stringy(integer)
  (1..integer).map { |element| element % 2 == 1 ? '1' : '0'}.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'