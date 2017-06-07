require_relative 'Cards'
require_relative 'Player'

class Dealer
attr_accessor :d_hand

def initialize 
	@d_hand = []
	end

def deal_to_player(player, deck)
	player.hand << deck.cards[0]
	player.hand << deck.cards[1]
	deck.cards.shift
	deck.cards.shift
	puts "#{player.hand[0]} and #{player.hand[1]}"
	end

def deal_to_dealer(dealer, deck)
	dealer.d_hand << deck.cards[0]
	dealer.d_hand << deck.cards[1]
	deck.cards.shift
	deck.cards.shift
	puts "Dealer is showing #{dealer.d_hand[0]}"
	end

def dealer_value(instance)
		dealer_value = instance.d_hand.inject(:+)
  		end

def dealer_turn (dealer, player, deck)
	puts "Now its the Dealers turn! He flips his card..."
	sleep(2)
	puts "Its a #{dealer.d_hand[1]}. His total now stands at #{dealer.dealer_value(dealer)}."

	while dealer.dealer_value(dealer) <= 21
		if dealer.dealer_value(dealer) < 17
			sleep(2)
			puts "Dealer must take a card! It is..."
			sleep(2)
			dealer.d_hand << deck.cards[0]
			deck.cards.shift
			puts "Its a #{dealer.d_hand[-1]}! Dealer total is now #{dealer.dealer_value(dealer)}."
			sleep(2)
			if dealer.dealer_value(dealer) > 21
				puts "Dealer busts! You win!"
			end

		elsif dealer.dealer_value(dealer) >= 17 
			puts "Dealer has #{dealer.dealer_value(dealer)} and must stay!"
			sleep(2)

				if dealer.dealer_value(dealer) > player.hand_value(player)
				puts "Dealer has #{dealer.dealer_value(dealer)} and you have #{player.hand_value(player)}. You lose"
				break

				elsif dealer.dealer_value(dealer) < player.hand_value(player)
				puts "Dealer has #{dealer.dealer_value(dealer)} and you have #{player.hand_value(player)}. You win"
				break

				elsif dealer.dealer_value(dealer) == player.hand_value(player)
				puts "Dealer has #{dealer.dealer_value(dealer)} and you have #{player.hand_value(player)}. Its a tie!"
				break
			end
		end
	end
end

 def play(player, dealer, deck)
 	while player.hand_value(player) <= 21
 	puts "Would you like to hit or stay"
 	answer = gets.chomp
 	if answer == "hit"
 		sleep(2)
 		player.hand << deck.cards[0]
 		deck.cards.shift
 		puts "Its a #{player.hand[-1]}! Your total is now #{player.hand_value(player)}"
 		sleep(2)
 			if player.hand_value(player) > 21
 				puts "you lose!"
 				break
 			end

 	elsif answer == "stay"
 		puts "Ok! your final value is #{player.hand_value(player)}"
 		sleep(2)
 		dealer.dealer_turn(dealer, player, deck)
 		break

 	else 
	print "I didn't quite get that..."

end
end
end
end







