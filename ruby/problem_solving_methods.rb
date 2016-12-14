
#________________RELEASE 1__________________
=begin
	
Search method
	-Takes an array of integers and integer to search for

	Searches the array for that iteger
		.length
		.times?

		for each integer in the array compare search_num and evaluate to true or false
			if array_num is true, find index of the numbe in array that wwas submitted 
		
	Returns the index of the integer or nil
=end


arr = [42, 89, 23, 1]


def search(array, search_num)

	counter = 0

	until counter == array.length
		if array[counter] == search_num
			return counter
		end

	counter += 1

	end
end



=begin
	
Fibonacci Number finder
	
	Find a way to have method to continue to count up, until array.length = argument 
		-within array, each number is the sum of the previous two
		- start with an array of 0 and 1
		- using negative indexes -1 and -2, add the last two digits 
		- shovel answer to the array, repeat "counter" times

	-Make array
	Return the array 

=end




def fin(counter)
	array = [0,1]
  
  until array.length == counter
	array << array[-1] + array[-2]
  end

	return array
end

p fin(200)

# ______________RELEASE 2_____________


=begin 

A NEW INSERTION SORT
	
	- Organize the initial array in numeric or alphabetic order
		-using index number to sort numbers in order
		- alphatbetize and put using first, then up to two letters in the string if needed
	
	- Take new information and add it to the array according to numeric or alphatbetic order
		- compare the number until it is adjacent to the numbers smaller or bigger
		- compare the letters until it is adjacent to the letters before or after
	
	- Return new array

=end

unsort_array = [1, 3, 4, 2, 5,45,23,43,54,65,21,78,54,32,5,7,433,9]


def insertion_sort(arr_to_sort, input)
  
  arr_to_sort << input
	arr_to_sort.sort
	
end

insertion_sort([1, 3, 4, 10, 5], 2)

p insertion_sort(unsort_array, 999)






