# search_array method
# Method takes an array and an integer as parameters
# Loops through array
# 	If integer is found in array, method returns index
# Method returns nil after entire array is searched

def search_array(array, int)
	i = 0
	while i < array.length
		if array[i] == int
			return i
		end
		i += 1
	end

	return nil
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)

# fibonacci method
# Method accepts integer as parameter
# A new array is created
# 	If int is 0, an empty array is returned
# 	If int is 1, an array with 0 in it is returned
# 	If int is 2, an array with 0 and 1 in it is returned
# 	If int is greater than 2, method proceeds to fibonacci calculation
# Rest of method loops until array length is equal to int
# 	Previous two numbers in array are added together
# 	New number is added to array
# Method returns array of fibonacci numbers

def fib(int)
	arr = Array.new

	if int > 0
		arr.push(0)
	end

	if int > 1
		arr.push(1)
	end

	if int > 2
		i = 2
		until i == int
			next_num = arr[i - 2] + arr[i - 1]
			arr.push(next_num)
			i += 1
		end		
	end

	return arr

end

p fib(1)
p fib(2)
p fib(6)

