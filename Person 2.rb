class Suspect

attr_accessor :hair, :gender
    def initialize(hair, gender)
        @hair   = hair
        @gender = gender
    end

    def is_guilty
        if self.hair == 'blonde' && self.gender == 'female'
            print "Good!"
        else 
            print "Bad!"
        end
    end
end

Andra = Suspect.new("blonde", "female")
Matt = Suspect.new("auburn", "female")
Gonpo = Suspect.new("red", "male")
Sierra = Suspect.new("lavender", "male")
John = Suspect.new("black", "male")
sus = []
sus << Andra 
sus << Matt
sus << Gonpo
sus << John
sus << Sierra

puts "Welcome to the game. Here are your suspects"




