################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 2.2
#
################################################################################

# 1. Create three variables, 'a', 'b', and 'c' and assign values to each variable using
#    parallel assignment so that a is 5, b is 7 and c is 9.
a, b, c = 5, 7, 9


# 2. Print the result of 'a' divided by 'b'.
puts a / b


# 3. Overwrite variable b and convert the original value of 'b' to a float
# number.
puts b.class
b = b.to_f
puts b.class

# 3. Write the same expression again from #2.
puts a / b


# 4. What do you notice?


# 5. Declare a new variable called `name` and assign it a String of your
#    first name.
name = "saifeldeen"


# 6. Write an expression that adds the variables `name` and `a`
#puts name + a

# 7. What happened?



# 8. Comment out problem 6 and rewrite it below, casting a into a String.
puts name + a.to_s

puts "#{name}#{a}"