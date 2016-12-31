def n
	puts "\n"
end
# Arrays are ordered, integer-indexed collections of any object.
# Arrays are indexed starting at 0. Any negative index values are relative to the end of the array. For instance, an index of -1 is the last value in the array, -2 is the second last value in the array. 
# Arrays are useful for sequential information, things like lists, queues, etc.

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array, printing each item in the array separated by an asterisk
list = zombie_apocalypse_supplies.each do |x| print x + " * " end

n# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies in alphabetical order.
puts zombie_apocalypse_supplies.sort!


n# 3. Create a method to see if a particular item (string) is in the zombie_apocalypse_supplies, don't use any built in methods.
# For instance: are boots in your list of supplies?
def innit?(array, item_to_look_for)
	result = false
	array.each do |list_item|
		if list_item == item_to_look_for
			result = true	
		end
	end
	return result
end

p innit?(zombie_apocalypse_supplies, "boots")

n# 4. You can't carry too many things, you've only got room in your pack for 5. Remove items in your zombie_apocalypse_supplies in any way you'd like, leaving only 5.

p zombie_apocalypse_supplies[1..5]

n# 5. You found another survivor! This means you can combine your supplies. Create a new combined supplies list out of your zombie_apocalypse_supplies and their supplies below. You should get rid of any duplicate items. 

other_survivor_supplies = ["warm clothes", "rations", "compass", "camp stove", "solar battery", "flashlight"]
combined_supplies = (zombie_apocalypse_supplies + other_survivor_supplies).uniq.sort!
p combined_supplies

# A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type. In other programming languages, they are sometimes called dictionaries.
n# Hashes enumerate their values in the order that the corresponding keys were inserted.
# Hashes show relational data, we store data in key/value pairs.

extinct_animals = {"Tasmanian Tiger" => 1936, "Eastern Hare Wallaby" => 1890, "Dodo" => 1662, "Pyrenean Ibex" => 2000, "Passenger Pigeon" => 1914, "West African Black Rhinoceros" => 2011, "Laysan Crake" => 1923}

n# 1. Iterate through extinct_animals, printing each key/value pair with a dash in between the key and value, and an asterisk between each pair

extinct_animals.each do |key, value| print key + "-" + value.to_s + " * " end


n# 2. Keep only animals in extinct_animals if they were extinct before the year 2000, don't use any special methods from the Hash module.
def extinct_b4_2000(ex_animals)
	ex_animals_b4_2000 = Hash.new
	ex_animals.each do |animal,year|
 	if year < 2000
 		ex_animals_b4_2000[animal] = year
 	end
 end
ex_animals = ex_animals_b4_2000
end


n# 3. Our calculations were completely off, turns out all of those animals went extinct 3 years before the date provided. Update the values in extinct_animals so they accurately reflect what year the animal went extinct.

extinct_animals.each do |animal, year|
	extinct_animals[animal] = year - 3
end

p extinct_animals

n# 4. You've heard that the following animals might be extinct, but you're not sure. Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# ----

extinct_animals.each do |animal, year|
	if animal == "Dodo" || animal == "Andean Cat" || animal == "Saiga Antelope"
		print "The #{animal} is extinct"
	end
end


n# 5. We just found out that the Passenger Pigeon is actually not extinct! Remove them from extinct_animals and return the key value pair as a two item array.
# ----

pass_pig = []

extinct_animals.map do |animal,year|
	if animal == "Passenger Pigeon"
		pass_pig << animal
		pass_pig << year
	end
	pass_pig
end

p pass_pig







