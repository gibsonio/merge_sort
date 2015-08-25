def merge_sort(arr)
  puts "breaking apart #{arr}"
  if arr.length > 1
    mid = (arr.length)/2
    lefthalf = arr[0,mid]
    righthalf = arr[mid..-1]

    merge_sort(lefthalf)
    merge_sort(righthalf)

    i = 0
    j = 0
    k = 0

    while i < lefthalf.length and j < righthalf.length
      if lefthalf[i] < righthalf[j]
        arr[k] = lefthalf[i]
        i += 1
      else 
        arr[k] = righthalf[j]
        j += 1
      end
      k += 1
    end

    while i < lefthalf.length
      arr[k] = lefthalf[i]
      i += 1
      k += 1
    end

    while j < righthalf.length
      arr[k] = righthalf[j]
      j += 1
      k += 1
    end
  end
  return arr
end

arr = [4,6,3,8,9,22,88]
sorted_list = merge_sort(arr)
puts sorted_list