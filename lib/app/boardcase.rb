

class Boardcase
# c'est une case. Il devrait y avoir 9 instances de cette classe lors d'une partie.
# créer 9 instances == 9 objets case qui constitueront les 9 cases à insérer dans la class Board
	
	attr_accessor :symbols, :id_case
	
		def initialize(num_case)
			@symbols = " "
			@id_case = num_case		
		end

end