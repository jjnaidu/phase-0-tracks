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

# # fibonacci method

# def fib(int)
# 	arr = Array.new
# 	if int == 0

# end
