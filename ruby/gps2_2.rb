# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into an array
  # set default quantity to 1 using iteration through the array
  # print the list to the console [can you use one of your other methods here?]
# output: return hash

def create_list(str)
	list = str.split(' ')
	grocery_list = Hash.new
	list.each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end

# Method to add an item to a list
# input: hash, item name, and optional quantity
# steps: take the item as an argument and add the item to the hash
# add optional quantity, if not quantity uses default value
# output: return the hash

def add_item(grocery_list, item_name, quantity=1)
	grocery_list[item_name] = quantity
end


# Method to remove an item from the list
# input: take the item name as an argument
# steps: find the key value equal to item and delete
# output: return the hash

# Method to update the quantity of an item
# input: take item name and quantity value as argument
# steps: iterate through hash and find key to change the value quantity
# output: return the hash

# Method to print a list and make it look pretty
# input: the hash
# steps: iterate through hash and print key/value pair
# output: print hash

grocery_list = create_list("lemonade tomatoes onions ice_cream")
add_item(grocery_list, "apples", 2)
add_item(grocery_list, "oranges")
p grocery_list