# require 'pry'
# require_relative './board'

class Game
# c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
# prend une instance

	attr_accessor :players
	# l'instance créée prends les variables players
	

	def initialize(name, symbole)
		@players = [player1 = Player.new(name1, "X"), player2 = Player.new(name2, "Y")]
	end

	def player1_turn
		puts "Your turn #{@players[0]}!"
	end

	def player1_turn
		puts "Your turn #{@players[0]}!"
	end

	def case
		puts "Pick up a free case!!!!"
	end


end

# binding.pry
# puts "end of file"

# game1 = Game.new

# game1.mess_begin
# game1.ask_name1