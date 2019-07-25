
class Game
# c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
# prend une instance

	attr_accessor :players, :current_player, :board
	# :bordcases
	# l'instance créée prends les variables players
	

	def initialize(player1, player2)

		@players = [player1, player2]
		# array des deux joueurs

		@current_player = @players[0]
		# définit le player1 comme premier joueur

		@board = Board.new
		# création d'un nouveau tableau de jeu

	end

	def turn
	# méthode faisant appel aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
		@board.play_turn(@current_player)
		# player1 joue

		show = Show.new(self)
		# création d'une instance show pour chaque game

		puts show.show_board
		# affiche la méthode show_board de l'instance show


		if @board.victory?(@current_player) == false
		# si la partie n'est pas terminée (cf Board)

				@current_player = (@players.reverse!)[0]
				# passe au joueur2

				turn
				# c'est reparti pour un tour

		# boucle de jeu qui tourne si le joueur(1 ou 2) ne remplit pas les conditions de victoire du jeu

		else 
			puts " "
			puts "#{@current_player.name} is the big winner!!"
		# en cas de victoire...

		end
	end

end

