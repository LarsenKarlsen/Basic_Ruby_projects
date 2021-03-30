array = [3,4,5,1,6,2,7]

def bubble_sort(array)
    swapped = true
    while swapped
        swapped=false
        for i in (0..array.length-2) do
            if array[i] > array[i+1] 
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
    end
array
end

p bubble_sort(array)