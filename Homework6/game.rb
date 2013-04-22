$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'out_of_bounds_util'
class Game
  # used for mixin method
  include OutOfBoundsUtil

  #	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess, :player, :secret_number, :min, :max
  attr_accessor :author
  @@author = "Saifeldeen Hadid"

  @@messages = { 
    win:      "You won!",
    lose:     "You lost! :-(",
    :too_low=>"Too low. ",
    :too_high=>"Too high. ",
    :too_high_extended=>"Too high, guess a lower number", 
    :too_low_extended=>"Too low, guess a higher number"
  }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed=3, set_of_numbers)
    @guesses_allowed = guesses_allowed
    @set_of_numbers = set_of_numbers
    @current_guess_count = 0
    @player = Player.new
    @secret_number = SecretNumber.new(set_of_numbers).secret_number
    @min = @set_of_numbers.min
    @max = @set_of_numbers.max
  end
  

  # Print who made this wonderful program :-)
  def print_created_by
    puts "Created by #{@@author}"

  end
  

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    puts print_created_by
    print "Enter your name: "
    @player = gets.chomp
    print "Welcome #{@player}, in this game you will have #{@guesses_allowed} guesses to find a number between #{@min} and #{@max}.  Enter a guess (hint: #{secret_number}): "

    # get user's guess
    guess = gets.chomp.to_i

    player_guessed_correct = false

    while guesses_left > 0 && !player_guessed_correct

      begin
        player_guessed_correct = guess_correct?(guess)
        increment_guess_count
      rescue OutOfBoundsError => e
        puts "#{e.message}, you still have #{guesses_left} guesses left "
      end

      if !player_guessed_correct
        # write a correctly formatted sentence
        if guesses_left == 1
          print "You have #{guesses_left} guess left, make your guess: "
          # get user's guess
          guess = gets.chomp.to_i
        elsif  guesses_left == 0
          print @@messages[:lose]
        else
          print "You have #{guesses_left} guesses left, make your guess: "
          # get user's guess
          guess = gets.chomp.to_i
        end

      else 
        puts @@messages[:win]
      end

    end



  end



	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)

    # via mixin method, check if out of bounds.  if out of bounds an error will be raised  
    if out_of_bounds?(@min, guess, @max)
      raise OutOfBoundsError.new("The number must be between #{@min} - #{@max}")
    end

    # condition over the guess, too high, too low and equal. also handle max and min numbers
    case 
    when guess > @secret_number
      if guesses_left == 1
        print @@messages[:too_high]
      else
        puts @@messages[:too_high_extended]
      end
    when guess < @secret_number
      if guesses_left == 1
        print @@messages[:too_low]
      else
        puts @@messages[:too_low_extended]
      end
    end

    guess == @secret_number
  end


  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count
    @current_guess_count += 1
  end
  

  # Calculates the guesses the player has left.
  def guesses_left
    @guesses_allowed - @current_guess_count
  end
end

