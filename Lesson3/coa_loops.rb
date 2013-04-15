################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Loops
# Learning Objective: Introduce loops and create a reference for students.
#
################################################################################

# Data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

states = {
				"Australian Capital Territory" => "ACT",
				"New South Wales" => "NSW",
				"Northern Territory" => "NT",
				"Queensland" => "QLD",
				"South Australia" => "SA",
				"Tasmania" => "TAS",
				"Victoria" => "VIC",
				"Western Australia" => "WA"
			}


# 1. display each province, followed by its abbreviation, each on its own line
puts "\n--------------------" # line to distinguish exercise output

i = 0
while i < states.length
	puts "#{states.keys[i]} - #{states.values[i]}"
	i += 1
end

# 2. using the .each method, display the months in the second quarter of the year, in a single row
puts "\n--------------------" # line to distinguish exercise output
#months.each do |month|
#	puts "#{month}"
#end

[4,5,6].each do |month_num|
	puts months[month_num -1 ]
end
puts "\n--------------------" # line to distinguish exercise output

(4..6).each do |month_num|
	puts months[month_num -1 ]
end

# 3. display the current year, followed by the third quarter months, and the same for the next two years, as shown
# 
# 2012: July August September
# 2013: July August September
# 2014: July August September
#
# there are many different ways you could do this, but you will need to nest one loop inside another.
# for this exercise, do not use the .each method in either loop
puts "\n--------------------" # line to distinguish exercise output
for year in [2013, 2014, 2015]
	print "#{year}: "
	month = 6
	3.times do
		print "#{months[month]} "
		month += 1
	end
	puts ''
end

puts "\n--------------------" # line to distinguish exercise output
for year in [2013, 2014, 2015]
	print "#{year}: "
	for month in [6, 7, 8]
		print "#{months[month]} "
	end
	puts ''
end
