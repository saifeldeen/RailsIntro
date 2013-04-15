################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Arrays 
# Learning Objective: Introduce array syntax.
# Note: This is a cumulative example. 
#
################################################################################


# 1. Create an array that stores three different months ("January, February, March").
months = ["January", "February", "March"]
# 2. Add two more months to your array in a single expression ("April May").
months.push("April")
months << "May"
months += ["June"]
months += %w(July August)
puts months

# 3. Convert your name to an array, and display it, in a single expression
puts %w(Saifeldeen Hadid)

name_array = ["Saifeldeen", "Hadid"]
puts name_array

puts "Saifeldeen Hadid".split
puts "Saifeldeen,Hadid,With,Commas".split(",")

# 4. Remove and display the last value in the months array.
# Was April and May removed why or why not.
last_month = months.pop
puts months
puts "Last month: #{last_month}"
months.unshift("MyMonth")
puts "First month #{months}"