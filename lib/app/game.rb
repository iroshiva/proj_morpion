# require 'pry'


class Game


	

	attr_accessor :players
	# chaque instance aura deux variables : som nom et un symbole

	def initialize
		@players = [player1 = Player.new("#{name1}", "X"), player2 = Player.new("#{name2}", "O")]

	end


end

# binding.pry
# puts "end of file"

game1 = Game.new

game1.mess_begin
game1.ask_name1