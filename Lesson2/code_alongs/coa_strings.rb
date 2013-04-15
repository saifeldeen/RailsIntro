################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise strings
#
################################################################################
#
# Working with Strings
#
################################################################################
# 1. declare and assign variables named first and last, with string values and a variable named age with a number value
first = "saifeldeen"
last = "hadid"
age = 33

# 2. declare and display a variable named user containing the combined value of the Task # 1 variables
user = "#{first}#{last}#{age}"
puts user

# 3. display the three variables using string interpolation

# 4. display the string "You typed X on the command line" where X is input by the user
x = gets.chomp
puts "You typed #{x} on the command line"
# 5. modify your Task # 4 code to display the input in all capital letters
puts "You typed #{x.upcase} on the command line"
