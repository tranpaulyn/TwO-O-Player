require 'pry'
require './question'
require './player'
require './game'

player1 = Player.new 'Player 1', 3
player2 = Player.new 'Player 2', 3

newGame = Game.new player1, player2

newGame.start()
