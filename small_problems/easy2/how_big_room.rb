CONVERSION_M_FT = 10.7639

def area_of_room
  puts ">> Enter the length of the room in meters: "
  print ">"
  room_length_m = gets.chomp.to_f
  puts ">> Enter the width of the room in meters: "
  print ">"
  room_width_m = gets.chomp.to_f

  area = room_length_m.round(2) * room_width_m.round(2)

  puts ">> The area of the room is #{area.round(2)} square meters (#{(area * CONVERSION_M_FT).round(2)} square feet)."
end

area_of_room