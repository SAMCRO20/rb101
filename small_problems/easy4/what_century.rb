# Problem
  # method that takes year as input and returns the century
  # return string that begins with century number and ends with st, nd, rd, or th
  # century is all AD
  # 1901-2000 is 20th century
  # mind the years that end in 00
  # century is the hundreds, or thousands, or ten thousands digit + 1
  # returned century must be a string
  # multiple methods needed to test year and to test what to append
  # first, second and third century different from 11, 12, 13; otherwise, everything ends in th

# Examples
  #century(2000) == '20th' <== mindful case
  #century(2001) == '21st'
  #century(1965) == '20th'
  #century(256) == '3rd' <== mindful
  #century(5) == '1st' <== mindful
  #century(10103) == '102nd' <== mindful
  #century(1052) == '11th' <== mindful
  #century(1127) == '12th'
  #century(11201) == '113th' <== mindful
  # heck, be mindful of every case... goodness -_-

# Data Structure
 # input - integer
 # output - string appended with appropriate st, nd, rd, or th <== case would be good

# Algo
  # 1st method
    # def century(year)
    # test year to find century - divide by 100 and subtract 1 -- if/modulo for 00 endings
    # return correct century as a string so it can be appended
  # 2nd method
    # dependent on century, append correct st, nd, rd, or th with case/when

# Code

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'