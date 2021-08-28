def swap_name(string)
  full_name = string.split
  first_name = full_name[0]
  last_name = full_name[1]

  name = "#{last_name}, #{first_name}"
  name
end

# def swap_name(name)
#   name.split(' ').reverse.join(', ')
# end

# def swap_name(first_last)
#   first, last = first_last.split
#   "#{last}, #{first}"
# end

p swap_name('Joe Roberts') == 'Roberts, Joe'