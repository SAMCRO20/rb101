def print_in_box(string)
  horizontal_rule = "+#{'-' * (string.size + 2)}+"
  empty_line = "|#{' ' * (string.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')