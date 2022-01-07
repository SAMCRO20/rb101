=begin

Problem
  - same as previous problem, but this time it will be a signed number
  - positive or negative
  - if positive in front, return pos
  - if negative, return negative
  - if nothing, return positive
Examples
  -string_to_signed_integer('4321') == 4321
  -string_to_signed_integer('-570') == -570
  -string_to_signed_integer('+100') == 100

Data Structure
  input = string
  output = integer
  utilize string to number
  if statement for sign in front

Algo
  -initialize has with digits
  -define method string_to_integer from previous example
    each character mapped with digits hash
    each character * 10 and added to next digit
  - define string_to_signed_integer method
    - check input's first character and decide whether it'll be pos or negative
      -string#include?
      -index[0] == '-'?
    - concatenate sign with string_to_integer

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  else           string_to_integer(string[1..-1])   
  end
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100