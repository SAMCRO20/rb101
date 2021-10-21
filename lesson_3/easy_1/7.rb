flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

#builds a nested array like:
#["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

#make an un-nested array
flintstones.flattten! #mutates flinstones