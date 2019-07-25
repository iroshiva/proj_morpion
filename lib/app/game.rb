# require 'pry'

# require_relative './board'
# require_relative './player'
# require_relative './application' 

class Game
# c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
# prend une instance

	attr_accessor :players, :current_player, :status
	# :bordcases
	# l'instance créée prends les variables players
	

	def initialize(player1, player2)

		@players = [player1, player2]
		@current_player = @players[0]
		@status = "on going"
		@board = Board.new

	end

	def turn
	# méthode faisant appel aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.

		@board.play_turn(@current_player)
		if @board.victory?(@current_player) == false
				@current_player = (@players.reverse!)[0]
				# turn
		# else 
		# 	puts "#{@current_player.name} is the big winner!!"
		end
		@board.play_turn(@current_player)
	end

	def new_round
  # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.





	end

end

