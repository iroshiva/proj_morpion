

class Application
# cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.

	# attr_accessor :
	attr_reader :my_game

	def initialize

		mess_intro_game
		ask_name1
		ask_name2

	
	end

	def perform

		@my_game = Game.new(@player1, @player2)
		my_game.turn

	end

	def mess_intro_game
	# intro du jeu, définit les règles du jeu

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

		@player1 = Player.new(name1, "X")

		puts " "
		puts "Allright bro, remember, you got the X!!!"
		
	end

	def ask_name2
	# demande le nom du joueur2 et créée l'instance player2

		puts " "
		puts "Hi player2! Ready to play?"
		puts " "
		puts "What's your fucking name?"
		print "> "
		name2 = gets.chomp

		@player2 = Player.new(name2, "Y")

		puts " "
		puts "Allright bro, remember, you got the O!!!"
		
	end
end
