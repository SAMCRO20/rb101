(1..99).each {|num| puts num if num % 2 == 1}

(1..99).each {|num| puts num if num.odd?} #also (1..99).select

# favorite
puts 1.upto(99).select(&:odd?) # accomplishes the block above