class Santa
	def initialize
		puts "Initializing Santa Instance ..."
	end
	def speak
		puts "Ho, Ho, Ho! Merry Christmas!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
end

this = Santa.new
that = Santa.new

this.speak
that.eat_milk_and_cookies("shortbread")