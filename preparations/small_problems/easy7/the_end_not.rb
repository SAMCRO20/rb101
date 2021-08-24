def penultimate(string)
  string.split[-2]
end

p penultimate('Launch School is great!')# == 'is'
p penultimate('last word') == 'last'