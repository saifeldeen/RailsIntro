class SecretNumber
  #   *** NOTE ***  
  #	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  #  		(hint: Review ruby documentation for attr_reader).
  attr_reader :set_of_numbers, :secret_number

	# Initializes the available range of numbers the Player can guess. (e.g. guess a number between 1 and 20).
	# 	(You should default the range of numbers to 1 - 10 if parameter is null.)
	# Initializes the secret number
	def initialize(set_of_numbers=[1,2,3,4,5,6,7,8,9,10])
		@set_of_numbers = set_of_numbers
		generate_secret_number
  	end

	#  Randomly generates a number from the range of numbers. Guessing this number wins the game.
	#  Look up "private methods" in the ruby docs.
	private 
	def generate_secret_number
		@secret_number = @set_of_numbers[rand(1..@set_of_numbers.length)].to_i
  	end
end


