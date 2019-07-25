require 'pry'
require_relative './board'
require_relative './player'
require_relative './application' 

class Game
# c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
# prend une instance

	attr_accessor :players, :current_player, :status
	# :bordcases
	# l'instance créée prends les variables players
	

	def initialize
	# créé 2 joueurs, créé un board, met le status à "on going", défini un current_player

		# puts " "
		# 	puts "Hi player1! Ready to play?"
		# 	puts " "
		# 	puts "What's your fucking name?"
		# 	print "> "
		# 	name1 = gets.chomp

		# 	player1 = Player.new(name1, "X")

		# 	puts " "
		# 	puts "Allright bro, remember, you got the X!!!"

		# 	puts "press Enter!"

		# 	enter = gets.chomp

		# 	if enter == "\n"
		# 	end

		# puts " "
		# 	puts "Hi player2! Ready to play?"
		# 	puts " "
		# 	puts "What's your fucking name?"
		# 	print "> "
		# 	name2 = gets.chomp

		# 	player2 = Player.new(name2, "O")

		# 	puts " "
		# 	puts "Allright bro, remember, you got the O!!!"

		# 	enter = gets.chomp

		# 		if enter == "\n"
		# 			ask_name2
		# 		end

		@players = [player1 = Player.new(name1, "X"), player2 = Player.new(name2, "O")]
		@current_player = @players[0]
		@status = "on going"
		@board = Board.new

	end

	def turn
	# méthode faisant appel aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.

		@board.play_turn(@current_player)
		if @board.victory?(@current_player) == false
				@current_player = (@players.reverse!)[0]
				turn
		else 
			puts "#{@current_player.name} is the big winner!!"




		end

		# puts "#{player.name} is the big winner!!"

		# user_choice = @prompt.select("So #{player.name}, where do you wanna put your #{player.symbol}?", case_choice)
	
	end

	def new_round
  # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.



	end

end

# binding.pry
# puts "end of file"

