require_relative 'Cards'
require_relative 'Player'
require_relative 'Dealer'


deck = Cards.new
player = Player.new
dealer = Dealer.new
deck.cards.shuffle!
puts "Welcome to Blackjack."
sleep (2)
print "Your cards are:  "
dealer.deal_to_player(player, deck)
sleep(2)
puts "Your card value is #{player.hand_value(player)}"
sleep(2)
dealer.deal_to_dealer(dealer, deck)
sleep(2)
dealer.play(player, dealer, deck)
