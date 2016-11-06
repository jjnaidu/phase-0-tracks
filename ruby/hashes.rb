# Method converts string to boolean

def to_boolean(str) 
	if str == "true"
		bool = true
	elsif str == "false"
		bool = false
	end
	return bool
end

# Define client hash
# Key name: <data type>
#
# Name: <string>
# Age: <int>
# Married: <boolean>
# Number of children: <int>
# Decor theme: <string>

client = {
	full_name: "",
	age: 0,
	married: true,
	num_children: 0,
	decor_theme: ""
}

# Ask user for information
# 	Convert age and num_children to int
# 	Convert married to boolean
# Print hash

puts "What is your full name?"
client[:full_name] = gets.chomp

puts "What is your age?"
age = gets.chomp
client[:age] = age.to_i

puts "true or false: You are currently married."
married = gets.chomp
client[:married] = to_boolean(married)

puts "How many children do you have?"
children = gets.chomp
client[:num_children] = children.to_i

puts "What kind of decor theme would you like?"
client[:decor_theme] = gets.chomp

p client

# Ask user to update hash (assumes no input error by user)
# 	If user enters key name, ask for new value and update
# 		If key name is "age" or "num_children", convert value to int
# 		If key name is "married", convert value to boolean
# 	If user enters "none", skip to the end of the program
# Print hash



puts "Which information would you like to change (reply 'none' to skip)"
option = gets.chomp

if option != "none"
	puts "Enter new information:"
	i = gets.chomp

	if option == "age" || option == "num_children"
		info = i.to_i
	elsif option == "married"
		info = to_boolean(i)
	else
		info = i
	end

	client[option.intern] = info
end

p client
