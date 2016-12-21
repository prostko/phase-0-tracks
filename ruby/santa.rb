class Santa

	def initialize(gender,ethno)
		puts "Initializing Santa Instance ..."
		@gender = gender
		@ethno = ethno
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def reindeer_ranking(reindeers)
		@reindeer_ranking = reindeers 
	end

	def age(num)
		@age = num if num >= 0
	end

	def speak
		puts "Ho, Ho, Ho! Merry Christmas!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def about
		puts "Ethnicity : #{@ethno},\n Gender : #{@gender} "
	end

	def about_age
		puts "Age : #{@age}"
	end


end

this_santa = Santa.new("male", "Honky")
that_santa = Santa.new("female", "Cracker")

this_santa.speak
that_santa.eat_milk_and_cookies("shortbread")


this_santa.about_age
this_santa.age(9)
this_santa.about_age
that_santa.about_age
this_santa.reindeer_ranking("ONLY RUDOLPH")
that_santa.about
this_santa.about

santas = []
example_genders = ["agender", "male", "female", "trans", "N/A", "gender fluid"]
example_ethnos = ["white", "black", "asian", "latino", "native-american", "northern", "european"]





10.times do |s|
	santas << ( Santa.new(example_ethnos[3],example_genders[0]))
		example_genders.shuffle!
		example_ethnos.shuffle!
	end
santas.each do |x| puts x.about end

















