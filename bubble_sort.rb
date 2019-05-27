def bubble_sort( arr )
  i = 0
  while i < arr.length - 1
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
      redo #Allows the loop to continue while true
    end
    i += 1
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])