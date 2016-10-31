puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is their volume level on a scale from 1 to 10?"
s_volume = gets.chomp
volume = s_volume.to_i

puts "What color is their fur?"
color = gets.chomp

puts "Is this hamster a good candidate for adoption?"
is_good = gets.chomp

puts "What is their estimated age?"
s_age = gets.chomp

if s_age.empty?
	s_age = nil
else
	age = s_age.to_i
end

puts "Name: #{hamster_name}"
puts "Volume: #{volume}"
puts "Fur Color: #{color}"
puts "Good For Adoption? #{is_good}"
puts "Estimated Age: #{age}"