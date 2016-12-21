class Santa
# Refactored getter/setter methods
	attr_reader :ethno
	attr_accessor :gender, :reindeer_ranking, :age
# defining initializing sequence, with two attributes
	def initialize(gender,ethno)
		puts "Initializing Santa Instance ..."
		@gender = gender
		@ethno = ethno
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
# different class methods
	def reindeer_ranking(reindeers)
		@reindeer_ranking = reindeers 
	end

	def speak
		puts "Ho, Ho, Ho! Merry Christmas!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(bad_deer)
		bad_deer = bad_deer.capitalize
		@reindeer_ranking.delete(bad_deer)
		@reindeer_ranking.insert(-1, bad_deer)
		p "Santa is very mad at #{bad_deer}."
		p "#{bad_deer} has been moved to last in Reindeer Rankings"
		@reindeer_ranking
	end
end

santas = []
example_genders = ["agender", "male", "female", "trans", "N/A", "gender fluid", "very unicorn", "so both", "much neither", "forever alone", "sexually identifies as santa"]
example_ethnos = ["white", "black", "asian", "latino", "native-american", "northern", "european", "indian", "muslim", "jewish", "pacific islander"]

this_santa = Santa.new("male", "white")
that_santa = Santa.new("female", "indian")

=begin
this_santa.speak
that_santa.eat_milk_and_cookies("shortbread")


this_santa.about_age
this_santa.age(9)
this_santa.about_age
that_santa.about_age
this_santa.reindeer_ranking("ONLY RUDOLPH")
that_santa.about
this_santa.about
=end

10000.times do |s|
	santas << ( Santa.new(example_ethnos.shuffle.sample,example_genders.shuffle.sample))
	end
santas.map do |each| each.age= (rand(0..140)) end
santas.map do |x| puts "This santa is #{x.ethno}; Gender is #{x.gender}; Age #{x.age} old" end




=begin
p this_santa.get_mad_at("Rudolph")
p that_santa.get_mad_at("Dasher")

p this_santa.gender
p that_santa.gender
that_santa.gender= "fluid"
p that_santa.gender

p this_santa.age
this_santa.celebrate_birthday
this_santa.celebrate_birthday
p this_santa.age
=end







