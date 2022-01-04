def calculate_bonus(salary, boolean)
  bonus = [] # boolean ? (salary / 2) : 0
# LS Sol'n is sooo much more succinct
  if boolean == true
    bonus = salary / 2
  elsif boolean == false
    bonus = 0
  end

  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000