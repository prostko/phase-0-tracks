#ask what the hamster name is

puts "What is the hamster's name?"

hamsters_name= gets.chomp

puts "From a scale of 1-10, how loud is the hamster?"

noise = gets.chomp.to_i

puts "What color is the hamster?"

color = gets.chomp

puts "Is the hamster a good candidate for adoption?"

candidate = gets.chomp

puts "Approximately how old is the hamster?"

age = gets.chomp.to_i

if age.empty? == true
  age = nil
	puts "nil"
end

puts "Your hamster's name is #{hamsters_name}, on a scale from 1-10, your hamsters noise is #{noise},
your hamster's fur color is #{color}, the hamster is a #{candidate} for adoption, your hamster is #{age}" 
