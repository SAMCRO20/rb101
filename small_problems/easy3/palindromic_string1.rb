def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

def palindrome_arr?(array)
  array == array.reverse
end

def palindrome_obj?(object)
  object == object.reverse
end

palindrome_obj?('356653') == true
palindrome_arr?([1, 2, 3, 2, 1]) == true