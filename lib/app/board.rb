
 class Board
# c'est le plateau. Il doit y avoir une instance de cette classe lors d'une partie. 
	
	attr_accessor :board_array

	def initialize

	 	@board_array = []

	 	i = 0

	 	9.times do
	 		@board_array << Boardcase.new(i)
	 	i += 1
	 	end

	 	@prompt = TTY::Prompt.new

	end 

	def play_turn(player)
  #une méthode qui :

		case_choice = []
    @board_array.each do |c|
      if c.symbols == ' '
        case_choice << c.id_case
      end
    end
    #1) demande au bon joueur ce qu'il souhaite faire
    # array case_choice créé qui récupère les Boardcase "vides" de l'array board_array(boardcases initiales)

    user_choice = @prompt.select("So #{player.name}, where do you wanna put your #{player.symbol}?", case_choice)
    # le joueur choisit sa case parmis les cases vides

    @board_array[user_choice].symbols = player.symbol
		# permet de sortir un chiffre correspondant à l'index au lieu de l'id de la bordcase

  end


  def victory?(player)
  # détermine une victoire si:

  	if @board_array[0].symbols == player.symbol && @board_array[1].symbols == player.symbol && @board_array[2].symbols == player.symbol
  	# 3 symboles identiques 1ère ligne

  	elsif @board_array[3].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[5].symbols == player.symbol
  	# 3 symboles identiques 2ème ligne

  	elsif @board_array[6].symbols == player.symbol && @board_array[7].symbols == player.symbol && @board_array[8].symbols == player.symbol
  	# 3 symboles identiques 3ème ligne

  	elsif @board_array[0].symbols == player.symbol && @board_array[3].symbols == player.symbol && @board_array[6].symbols == player.symbol
  	# 3 symboles identiques 1ère colonne

  	elsif @board_array[1].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[7].symbols == player.symbol
  	# 3 symboles identiques 2ème colonne

  	elsif @board_array[2].symbols == player.symbol && @board_array[5].symbols == player.symbol && @board_array[8].symbols == player.symbol
  	# 3 symboles identiques 3ème colonne

  	elsif @board_array[0].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[8].symbols == player.symbol
  	# 3 symboles identiques 1ère diagonale

  	elsif @board_array[2].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[6].symbols == player.symbol
  	# 3 symboles identiques 2ème diagonale

  	elsif @board_array[0].symbols != ' ' && @board_array[1].symbols != ' ' && @board_array[2].symbols != ' ' && @board_array[3].symbols != ' ' && @board_array[4].symbols != ' ' && @board_array[5].symbols != ' ' && @board_array[6].symbols != ' ' && @board_array[7].symbols != ' ' && @board_array[8].symbols != ' '
  	# ou EGALITE !!!!

  		puts " DRAW GAME SUCKERS!!!!"

  	else
  	# sinon pas de vistoire, les joueurs continuent de jouer
  		false
  	end
  end


 end


