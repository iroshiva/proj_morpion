require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
# require 'app/game'
require 'app/board'
require 'app/boardcase'


my_name = Player.new("Jean", "X")

teste = Board.new

teste.play_turn(my_name)
teste.victory?(my_name)