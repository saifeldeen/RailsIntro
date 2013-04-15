################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Putting all together.
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################
responses = Hash.new

responses[:positive] =  [ "It is certain", "It is decidedly so",
                          "Without a doubt", "Yes - definitely",
                          "You may rely on it", "As I see it, yes",
                          "Most likely", "Outlook good", "Yes",
                          "Signs point to yes" ]

responses[:neutral] =  [ "Reply hazy, try again", "Ask again later",
                         "Better not tell you now", "Cannot predict now",
                         "Concentrate and ask again" ]

responses[:negative] = [ "Don't count on it", "My reply is no",
                         "My sources say no", "Outlook not so good",
                         "Very doubtful" ]

# 1. Create a loop that counts down from 4 using `loop` and prints
#    a value from responses[:negative] using `count` as the index of the
#    Array. The loop should break when count is below 1.

puts "Problem 1:"
count = 4
loop do
	puts responses[:negative][count]
	count -= 1
	break if count < 1
end


# 2. Translate Problem 1 below to use `while` instead of `loop`.
puts "\n\nProblem 2:"
count = 4
while count > 0
	puts responses[:negative][count]
	count -= 1
end

# 3. Translate the loop to use `until`.

puts "\n\nProblem 3:"
count = 4
until count == 0
	puts responses[:negative][count]
	count -= 1
end

# 4. Translate the loop to use `times` to iterate 3 times.

puts "\n\nProblem 4:"
count = 4
4.times do
	puts responses[:negative][count]
	count -= 1
end
# 5. Translate the loop to use a range from 0 to 4

puts "\n\nProblem 5:"
(1..4).each do |count|
	puts responses[:negative][count]
end
# 6. Create a new loop using the `.each` method to iterate over each
#    value in the `responses[:neutral]` Array to print each String to
#    the screen.

puts "\n\nProblem 6:"
responses[:neutral].each do |response|
	puts response
end

# 7. You can also loop through Hashes. Loop through our `responses`
#    hash, printing each Array to the screen.

puts "\n\nProblem 7a:"
responses.each do |response|
	print response
	puts ''
end

puts "\n\nProblem 7b:"
responses.each do |key,value|
	print "#{key}: #{value}"
	puts ''
end

# 8. Finally, iterate over both the Hash and then Array of that key so
#    that you individually print out each value of the Array.

puts "\n\nProblem 8:"
responses.each do |type,responses_array|
	puts "#{type}: "
	responses_array.each do |response|
		puts response
	end
	puts ''
end

