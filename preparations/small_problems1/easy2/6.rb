# (1..99).select { |n| puts n if n % 2 == 1}

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# (1..99).select { |n| puts n if n.odd?}

1.upto(99) { |n| puts n if n.odd?}