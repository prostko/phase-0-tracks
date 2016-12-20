class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end


# RELEASE 1
 
class Puppy 
 
 def initialize 
   puts "Initializing new puppy instance ..."
 end 
 
 def speak(int)
   int.times{puts "Woof!"}
 end 
 
 def roll_over
   puts "*rolls over*"
 end
 
 def dog_years(int)
   p int * 7
 end
 
 def shake_hands
   puts "*shakes hand*"
 end 
 
end 

puppy = Puppy.new 
puppy.speak(3)
puppy.roll_over
puppy.dog_years(8)
puppy.shake_hands

#release 2

=begin Dolphin class
		Initialize method for the dolphin
		dolphin does tricks(methods)
		save all the dolphins into an array

=end

class Dolphin
 def initialize
   puts "initializing new dolphin instance"
 end 
 
 def spin
   puts "*dolphin spins out of the water*"
 end 
 
 def spout
   puts "*dolphin blows water*"
 end 
end

#driver code

dolphins = Array.new(50) {Dolphin.new}

dolphins.each do |dolphin|
 dolphin.spout
 dolphin.spin
end