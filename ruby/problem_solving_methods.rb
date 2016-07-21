def search_array(arr=[], integer)
    i = 0
    while i < arr.length
        if arr[i] == integer
            return i
        end
        i += 1
    end
return nil 
end
#a different way using a hash
def search_array(arr, number)
    hashmap = Hash[arr.map.with_index.to_a]
    return hashmap[number]
end
#search_array([1,2,3,4,5], 3)
#uncomment line of code above to test method

def fibonacci(number)
    fib_arr = [0]
    i = 0
    j = 1
    original_i = nil
    (number-1).times do 
        original_i = i
        i = j 
        j = original_i + j 
        fib_arr.push(i)
    end
return fib_arr
end 
#fibonacci(6)
#uncomment line of code above to test method

#will need to counters to access two spots in the array at the same time
# i and i+1 
#two loops
def bubble_sort(arr)
    i = 0
    while i < arr.length
        j = i + 1
        while j < arr.length
            if arr[j] < arr[i]
                temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            end
            j += 1
        end
        i += 1
    end
return arr
end
# bubble_sort([1, 5, 6, 3, 2, 9, 11])
# uncomment line of code above if you want an easy way to test bubble_sort method
