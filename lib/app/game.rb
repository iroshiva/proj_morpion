# require 'pry'


class Game

	# attr_accessor :players
	# # chaque instance aura deux variables : som nom et un symbole

	# def initialize
	# 	@players = [player1 = Player.new("#{name1}", "X"), player2 = Player.new("#{name2}", "O")]

	# end


	def mess_begin
			puts " "
			puts "Welcome to the puta madre morpion of the year!!!!!"
			puts " "
			puts "Nothing's easier than this two players game!"
			puts "Rules are simple : the player1 got the X and player2 the O!!"
			puts "At each round, player1 have to put his symbol in one free case of an 9 cases array. Then, it's player2's turn."
			puts "The purpose of this huge game is to align verticaly, or honrizontaly, or in diagonal, three of your symbol!!"
			puts " "
			puts "READY MOTHERFUCKER??"
			puts " "
			puts "Connect your motherfuckin' brain!!!"
	end

	def ask_name1
			puts " "
			puts "Hi player1! Ready to play?"
			puts " "
			puts "What's your fucking name?"
			print "> "
			name1 = gets.chomp
			puts " "
			puts "Allright bro, remember, you got the X!!!"
	end

end

# binding.pry
# puts "end of file"

game1 = Game.new

game1.mess_begin
game1.ask_name1