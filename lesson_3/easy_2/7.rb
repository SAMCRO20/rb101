flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

#We could have used either Array#concat or Array#push to add Dino to the family.

# Add multiple items to array (Dino and Hoppy)

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# or
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item