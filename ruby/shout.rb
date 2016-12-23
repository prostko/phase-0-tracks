=begin
#calling pre-existing module

	require SecureRandom

	SecureRandom.base64(50)

	Math.sqrt(500)


module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + ":D :D :D"
	end
end

p Shout.yell_angrily("This is stupid")
p Shout.yell_angrily("This is awesome")


module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude}..."
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end



bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
=end

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + ":D :D :D"
	end
end

class Ornithologist
	include Shout
end

class Richard_Branson
	include Shout
end

dude = Ornithologist.new
rich = Richard_Branson.new

p dude.yell_happily("A secretary bird")

p rich.yell_angrily("If someone offers you an opportunity and you're not sure you can do it, say yes -- then learn how to do it later")








