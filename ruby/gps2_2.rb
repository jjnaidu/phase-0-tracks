# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into an array
  # set default quantity to 1 using iteration through the array
  # print the list to the console [can you use one of your other methods here?]
# output: return hash

def create_list(str)
	list = str.split(' ')
	grocery_list = {}
	list.each do |item|
		grocery_list[item] = 1
	end
	print_list(grocery_list)
	return grocery_list
end

# Method to add an item to a list
# input: hash, item name, and optional quantity
# steps: take the item as an argument and add the item to the hash
# add optional quantity, if not quantity uses default value
# output: return the hash

def add_item(grocery_list, item_name, quantity=1)
	grocery_list[item_name] = quantity
	return grocery_list
end


# Method to remove an item from the list
# input: take the hash item name as an argument
# steps: find the key value equal to item and delete
# output: return the hash

def remove_item(grocery_list, item_name)
	grocery_list.delete(item_name)
	return grocery_list
end

# Method to update the quantity of an item
# input: take hash, item name, and quantity value as argument
# steps: change quantity based on item name
# output: return the hash

def update_quantity(grocery_list, item_name, quantity)
	add_item(grocery_list, item_name, quantity)
	return grocery_list
end

# Method to print a list and make it look pretty
# input: the hash
# steps: iterate through hash and print key/value pair
# output: print hash

def print_list(grocery_list)
	grocery_list.each do |item_name, quantity|
		puts "#{item_name} => #{quantity}"
	end
end

grocery_list = create_list("lemonade tomatoes onions ice_cream")
add_item(grocery_list, "apples", 2)
add_item(grocery_list, "oranges")
remove_item(grocery_list, "tomatoes")
update_quantity(grocery_list, "ice_cream", 5)

# Print list after updates
puts ""
print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?
# I learned that pseudocode makes it easier to design methods because
# specifying the input and output can make it easier to determine the
# steps for the method.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays are simpler to use, but hashes hold more information and make
# it easier to organize that information.

# What does a method return?
# A method returns a value if one is specified.

# What kind of things can you pass into methods as arguments?
# Values, variables, and other methods can be passed as arguments.

# How can you pass information between methods?
# You can return the information to the driver code and pass it 
# as an argument to another method, or you can call a method inside
# another method.

# What concepts were solidified in this challenge, and what concepts 
# are still confusing?
# Pseudocode was made more clear to me in this challenge. I was
# confused about when it's necessary to specify a return value and
# when I don't need it.