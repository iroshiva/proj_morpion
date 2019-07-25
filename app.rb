require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/game'
require 'app/board'
require 'app/boardcase'




# puts " "
# puts "Welcome to the puta madre morpion of the year!!!!!"
# puts " "
# puts "Nothing's easier than this two players game!"
# puts "Rules are simple : the player1 got the X and player2 the O!!"
# puts "At each round, player1 have to put his symbol in one free case of an 9 cases array. Then, it's player2's turn."
# puts "The purpose of this huge game is to align verticaly, or honrizontaly, or in diagonal, three of your symbols!!"
# puts " "
# puts "READY MOTHERFUCKER??"
# puts " "
# puts "Connect your motherfuckin' brain!!!"
# puts "press Enter!"


# enter = gets.chomp

# if enter == "\n"
# end


# my_name = Player.new("Jean", "X")

teste = Application.new

teste