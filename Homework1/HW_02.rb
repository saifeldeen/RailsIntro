###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 
#
# 2. Ask the user for their name and store it in a variable.
#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################
# constants
MAX_NUBMER = 10
MIN_NUBMER = 1

# Welcoming message to user
puts "Welcome to the number guessing game!"

# var declarations
first_name = "Saifeldeen"
last_name = "Hadid"
player_name = ""
secret_number = 7

puts "Created by " + first_name + " " + last_name


# get player's name
print "Enter your name: "
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
			print "Too high. "
		else
			puts "Too high, guess a lower number"
		end
	when guess < secret_number
		guesses_left = guesses_left -1
		if guesses_left == 0
			print "Too low. "
		else
			puts "Too low, guess a lower number"
		end
	when guess == secret_number
		puts "You guessed the secrect number correctly!  You win!"
		guess_correct = true
	end

end

# Inform the player that they lost :(
if !guess_correct
	puts "Sorry, the correct number was #{secret_number}"
end