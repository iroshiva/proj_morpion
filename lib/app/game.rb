require 'pry'
# require_relative './board'

class Game
# c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
# prend une instance

	attr_accessor :players
	# :bordcases
	# l'instance créée prends les variables players
	

	def initialize(name, symbol)
		@players = [player1 = Player.new(name1, "X"), player2 = Player.new(name2, "Y")]
	end

	def mess_begin
			puts " "
			puts "Welcome to the puta madre morpion of the year!!!!!"
			puts " "
			puts "Nothing's easier than this two players game!"
			puts "Rules are simple : the player1 got the X and player2 the O!!"
			puts "At each round, player1 have to put his symbol in one free case of an 9 cases array. Then, it's player2's turn."
			puts "The purpose of this huge game is to align verticaly, or honrizontaly, or in diagonal, three of your symbols!!"
			puts " "
			puts "READY MOTHERFUCKER??"
			puts " "
			puts "Connect your motherfuckin' brain!!!"
			puts "press Enter!"

			enter = gets.chomp

			if enter == "\n"
			end
	end

	def ask_name1
	# demande le nom du joueur1 et créée l'instance player1
			puts " "
			puts "Hi player1! Ready to play?"
			puts " "
			puts "What's your fucking name?"
			print "> "
			name1 = gets.chomp

			player1 = Player.new(name1, "X")

			puts " "
			puts "Allright bro, remember, you got the X!!!"

			puts "press Enter!"

			enter = gets.chomp

			if enter == "\n"
			end
	end

	def ask_name2
	# demande le nom du joueur2 et créée l'instance player2
			puts " "
			puts "Hi player2! Ready to play?"
			puts " "
			puts "What's your fucking name?"
			print "> "
			name2 = gets.chomp

			player2 = Player.new(name2, "Y")

			puts " "
			puts "Allright bro, remember, you got the O!!!"

			enter = gets.chomp

				if enter == "\n"
					ask_name2
				end
	end

	def perform
		mess_begin
		ask_name1
		ask_name2
	end


end

# binding.pry
# puts "end of file"

game1 = Game.new

game1.player1_turn