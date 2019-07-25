require 'pry'
require 'tty-prompt'
require_relative './boardcase'
require_relative './player'
require_relative './game'



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

    #1) demande au bon joueur ce qu'il souhaite faire
    # player_choice = @prompt.select("So #{player.name}, where do you wanna put your #{player.symbol}?", @board_array)

		case_choice = []
    @board_array.each do |c|
      if c.symbols == ' '
        case_choice << c
      end
    end
    
    user_choice = @prompt.select("So #{player.name}, where do you wanna put your #{player.symbol}?", case_choice)
    user_choice.symbols = player.symbol
    puts user_choice.symbols




    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    # if player_choice.symbols == " "
    # 	puts "#{player.symbol}"
    # else
    # 	puts "Sorry bro, this case is already taken... are you blind?"
    # end 

  end


  def victory?(player)

  	if @board_array[0].symbols == player.symbol && @board_array[1].symbols == player.symbol && @board_array[2].symbols == player.symbol

  		# puts "tu as gagné!"

  	elsif @board_array[3].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[5].symbols == player.symbol

  	  # puts "tu as gagné!"

  	elsif @board_array[6].symbols == player.symbol && @board_array[7].symbols == player.symbol && @board_array[8].symbols == player.symbol
  		
  		# puts "tu as gagné!"

  	elsif @board_array[0].symbols == player.symbol && @board_array[3].symbols == player.symbol && @board_array[6].symbols == player.symbol
  		
  		# puts "tu as gagné!"

  	elsif @board_array[1].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[7].symbols == player.symbol
  		
  		# puts "tu as gagné!"

  	elsif @board_array[2].symbols == player.symbol && @board_array[5].symbols == player.symbol && @board_array[8].symbols == player.symbol
  		
  		# puts "tu as gagné!"

  	elsif @board_array[0].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[8].symbols == player.symbol
  		
  		# puts "tu as gagné!"

  	elsif @board_array[2].symbols == player.symbol && @board_array[4].symbols == player.symbol && @board_array[6].symbols == player.symbol
  		
  		# puts "tu as gagné!"

  	elsif @board_array[0].symbols != ' ' && @board_array[1].symbols != ' ' && @board_array[2].symbols != ' ' && @board_array[3].symbols != ' ' && @board_array[4].symbols != ' ' && @board_array[5].symbols != ' ' && @board_array[6].symbols != ' ' && @board_array[7].symbols != ' ' && @board_array[8].symbols != ' '

  		puts " DRAW GAME SUCKERS!!!!"

  	else
  		false
  	end
  end


 end

# binding.pry
# puts "end of file"

