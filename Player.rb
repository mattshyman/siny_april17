class Player

	attr_accessor :hand

	def initialize 
		@hand = []
	end

	def hand_value(instance)
		instance.hand.inject(:+)
  		end
	end



