###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################
MAX_NUBMER = 10
MIN_NUBMER = 1
set_of_numbers = [1,2,3,4,5,6,7,8,9,10];
# var declarations
first_name = "Saifeldeen"
last_name = "Hadid"
player_name = ""

secret_number = set_of_numbers[rand(1..10)].to_i

messages = {:welcome=>"Welcome to the number guessing game!", 
	:credits=>"Created by #{first_name} #{last_name}",
	:get_name=>"Enter your name: ",
	:win=>"You guessed the secrect number correctly!  You win!", 
	:lose=>"You lose, the correct number was #{secret_number}",
	:too_low=>"Too low. ",
	:too_high=>"Too high. ",
	:too_high_extended=>"Too high, guess a lower number", 
	:too_low_extended=>"Too low, guess a higher number"}

# Welcoming message to user
puts messages[:welcome]

puts messages[:credits]


# get player's name
print messages[:get_name]
player_name = gets.chomp

puts "Hi #{player_name}! You have 3 guesses to guess the secret number between 1 and 10"

guesses_left = 3

# boolean to indicate if the user has correctly guessed the 
# number to break out of the while loop
guess_correct = false

while guesses_left > 0 && !guess_correct

	# write a correctly formatted sentence
	case 
	when guesses_left == 1
		print "You have #{guesses_left} guess left, make your guess: "
	when guesses_left != 1		
		print "You have #{guesses_left} guesses left, make your guess: "
	end

	# get user's guess
	guess = gets.chomp.to_i

	# condition over the guess, too high, too low and equal. also handle max and min numbers
	case 
	when guess > MAX_NUBMER || guess < MIN_NUBMER
		puts "The number must be between 1 - 10, you still have #{guesses_left} guesses left"
	when guess > secret_number 
		guesses_left = guesses_left -1
		if guesses_left == 0
			print messages[:too_high]
		else
			puts messages[:too_high_extended]
		end
	when guess < secret_number
		guesses_left = guesses_left -1
		if guesses_left == 0
			print messages[:too_low]
		else
			puts messages[:too_low_extended]
		end
	when guess == secret_number
		puts messages[:win]
		guess_correct = true
	end

end

# Inform the player that they lost :(
if !guess_correct
	puts messages[:lose]
end