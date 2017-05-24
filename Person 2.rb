class Suspect

attr_accessor :name, :gender, :skin, :hair, :eye
    def initialize(name, gender, skin, hair, eye)
        @name   = name
        @gender = gender
        @skin   = skin
        @hair   = hair
        @eye    = eye
    end

    def self.all
    ObjectSpace.each_object(self).to_a
  end
end

Rachel   = Suspect.new("rachel", "girl", "black", "auburn", "brown")
Mac      = Suspect.new("mac", "boy", "white", "black", "brown")
Nick     = Suspect.new("nick", "boy", "white", "brown", "blue")
Angie    = Suspect.new("angie", "girl", "white", "auburn", "green")
Theo     = Suspect.new("theo", "boy", "white", "blonde", "brown")
Joshua   = Suspect.new("joshua", "boy", "white", "black", "brown")
Emily    = Suspect.new("emily", "girl", "white", "blonde", "blue")
Jason    = Suspect.new("jason", "boy", "white", "brown", "blue")
John     = Suspect.new("john", "boy", "white", "blonde", "green")
Grace    = Suspect.new("grace", "girl", "black", "black", "brown")
Jake     = Suspect.new("jake", "boy", "white", "brown", "brown")
Megan    = Suspect.new("megan", "girl", "white", "blonde", "green")
Ryan     = Suspect.new("ryan", "boy", "white", "auburn", "brown")
Brandon  = Suspect.new("brandon", "boy", "white", "blonde", "brown")
Beth     = Suspect.new("beth", "girl", "white", "blonde", "brown")
Diane    = Suspect.new("beth", "girl", "black", "brown", "brown")
Chris    = Suspect.new("chris", "boy", "white", "black", "green")
David    = Suspect.new("david", "boy", "black", "black", "brown")
Michelle = Suspect.new("michelle", "girl", "black", "brown", "brown")
Tyson    = Suspect.new("tyson", "boy", "black", "black", "brown")
Ursula   = Suspect.new("ursula", "girl", "white", "auburn", "green")

print Suspect.all



