$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'player'
require 'secret_number'
require 'game'


secret_number = SecretNumber.new
puts "Secret number (default): #{secret_number.secret_number}"
arr = *(1..20)
secret_number = SecretNumber.new(arr)
puts "Secret number with 1-20 array: #{secret_number.secret_number}"


game = Game.new(arr)
game.print_created_by
game.start_game
