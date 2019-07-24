require 'pry'


class Player

	attr_accessor :name, :symbol
	# chaque instance aura deux variables : som nom et un symbole

	def initialize(name, symbol)
		@name = name 
		@symbol = symbol
	end

end

binding.pry
puts "end of file"


# VOIR PLUS TARD POUR LE CHOIX DU SYMBOLE...
# POUR L'INSTANT, le joueur peut tout taper