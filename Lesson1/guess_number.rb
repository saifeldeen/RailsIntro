num = 7
numberOfGoes = 3;
i = 0
while i < numberOfGoes
	val = gets.chomp
	if  val.to_i > num 
		print "too high"
 	elsif val.to_i < num 
		print "too low"
	elsif val.to_i == num
		puts "yay, #{num} was the correct number"
	end

	i = i + 1
	if i == numberOfGoes
		puts ", sorry, no more goes..."

	print ", try again... #{numberOfGoes-1-i} goes left"
end
puts "finish..."
