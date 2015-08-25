arr = [5,1,72,4,8,122,42,0,6]
arr_2 = [2,6,33,25,44,66,22,3,5]
#should be 1,2,3,4,5,5,6,6,et cetera
arr_4 = [[2,4],[6,8],[22,44],[122,555]]
arr_3 = [[1,3],[5,7],[11,32],[145,1661]]

def merge(arr1,arr2)
	puts arr1
	puts " "
	puts arr2
	puts " "
	puts " ----- "
	new_sequence = []
	if arr1.length == 1 && arr2.length == 1
		if arr1[0] > arr2[0]
			new_sequence << arr2[0]
			new_sequence << arr1[0]
		elsif arr1[0] < arr2[0]
			new_sequence << arr2[0]
			new_sequence << arr1[0]
		end
	else 
		# pointer_1 = 0
		# pointer_2 = 0
		while arr1.length > 0 || arr2.length > 0
			if arr1[0][0] > arr2[0][0]
				new_sequence << arr2.shift	
			elsif arr1[0][0] < arr2[0][0]
				new_sequence << arr1.shift				
			end				
			puts new_sequence
			puts " "
		end
	end
	return new_sequence
end

def merge_sort(arr)
	mid = arr.length/2
	lefthalf = arr[0,mid]
	righthalf = arr[mid..-1]
	if arr.length == 1
		return arr
	else
	    return merge(merge_sort(lefthalf),merge_sort(righthalf))
	end
	#returns a merge of 2 merge_sorts
end

arr = merge_sort(arr)
puts arr


	# pointer_1 = 0
	# pointer_2 = 0
	# new_sequence = []
	# if arr1.length == 1 && arr2.length == 1
	# 	if arr1[0] > arr2[0]
	# 		new_sequence << arr1[0]
	# 	else 
	# 		new_sequence << arr2[0]
	# 	end
	# else 
	# 	while pointer_1 < arr1.length || pointer_2 < arr2.length	
	# 		if arr1[pointer_1] > arr2[pointer_2]
	# 			new_sequence << arr2[pointer_2]
	# 			pointer_2 += 1	
	# 		elsif arr1[pointer_1] < arr2[pointer_2]
	# 			new_sequence << arr1[pointer_1]			
	# 			pointer_1 += 1
	# 		end	
	# 	end
	# end
	# return new_sequence