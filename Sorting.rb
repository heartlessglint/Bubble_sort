require 'benchmark'

def bubble_sort (arr) #Improved to less then 1 second for same array
    changes = true
    completed = 0
    length = arr.length - 1
    while changes 
        current = 0
        total_to_complete = length - completed
        arr.each_with_index do |val, index|
            if index == total_to_complete
                completed += 1
                if total_to_complete == 0
                    changes = false
                end
                break
            elsif arr[index] > arr[index + 1]
                arr[index], arr[index + 1] = arr[index + 1], arr[index]
                changes = true
            end
        end
    end
end
