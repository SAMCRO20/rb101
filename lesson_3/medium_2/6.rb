def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#refactored, as the if is unnecessary
def color_valid(color)
  color == "blue" || color == "green"
end