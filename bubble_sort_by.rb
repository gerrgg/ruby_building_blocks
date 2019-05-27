def bubble_sort_by( arr )
  i = 0
  while i < arr.length - 1
    if arr[i] > arr[i + 1] && yield( arr[i], arr[i + 1] )
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        i = 0
        redo #Allows the loop to continue while true
    end
    i += 1
  end
  arr.reverse!
end
  
arr = ["hi","hello","hey"]
bubble_sort_by(arr) do |left,right|
    left.length - right.length
end
p arr
