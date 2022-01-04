# GRADES = { A: 90..100,
#   B: 80...90,
#   C: 70...80,
#   D: 60...79,
#   E: 0...60 
# }

# def get_grade(score1, score2, score3)
# average = (score1 + score2 + score3) / 3

# GRADES.each do |grade, range|
# return grade.to_s if range.include?(average)
# end
# end
A = 90..100
B = 80...90
C = 70...80
D = 60...70
F = 0...60

def get_grade(int_1, int_2, int_3)
  mean = (int_1 + int_2 + int_3) / 3

  if A.include? mean
    return "A"
  elsif B.include? mean
    return 'B'
  elsif C.include? mean
    return 'C'
  elsif D.include? mean
    return 'D'
  else
    return 'E'    
  end
  # case result # if I didn't initialize constants
  # when 90..100 then 'A'
  # when 80..89  then 'B'
  # when 70..79  then 'C'
  # when 60..69  then 'D'
  # else              'F'
  # end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"