def sequence(count, start)
  result = []
  number = start
  
  count.times do
    result << number
    number += start
  end

  result

  
# def sequence(count, first)
#   (1..count).map { |value| value * first }
# end

# def sequence(count, n)
#   results = []

#   while count > 0
#     results.unshift(n * count)
#     count -= 1
#   end

#   results
# end


p sequence(5, 1)# == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []