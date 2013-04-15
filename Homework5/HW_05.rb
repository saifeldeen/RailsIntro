###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 05
#
# Purpose:
#
# Read the instructions below and complete the exercises in this file. This Lab
# will help you review more advanced Object-Oriented topics. 
#
# This exercise changes the secret number game into an object oriented program. 
###############################################################################
#
# 1. Complete the instructions in secret_number.rb, player.rb and game.rb and HW_05.rb.
#
# 2. Remember to keep your code clean and keep in mind how your file is
#    laid out. You want to make sure that the TAs reading your work will
#    understand your thought process.
###############################################################################
#
# Student's Solution
#
###############################################################################

#	Include the Player, SecretNumber, and Game classes
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'player'
require 'secret_number'
require 'game'


#   Instantiate a new Game (using your preferred number of guesses, range of numbers)
arr = *(1..20)
num_guesses = 5

game = Game.new(num_guesses, arr)

#   Start the Game. 
game.start_game

