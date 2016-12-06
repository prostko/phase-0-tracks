#ask what the hamster name is

puts "What is the hamster's name?"

hamsters_name= gets.chomp

puts "From a scale of 1-10, how loud is the hamster?"

noise = gets.chomp

puts "What color is the hamster?"

color = gets.chomp

puts "Is the hamster a good candidate for adoption?"

candidate = gets.chomp

puts "Approximately how old is the hamster?"

age = gets.chomp

if age.empty? == true
  age = nil
	puts "nil"
end
