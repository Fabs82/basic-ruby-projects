def bubble_sort(array)
    swapped = true
    n = 0
    array_range = 0...(array.size - 1 - n)
    while swapped 
        swapped = false
        array_range.each do |idx|
            if array[idx] > array[idx+1]
                array[idx], array[idx+1] = array[idx+1], array[idx]
                swapped = true
            end
        end
    n+=1
    end
   array
end

print bubble_sort([4,3,78,2,0,2])

#1. while loop che continua fino a tutti gli elementi non sono nella posizione giusta - (swap_flag = true)?
#2. Loop sulla lista e comparazione di element[index] e element[index+1]
#3. Variabile index=0 per tenere conto della posizione degli elementi nella lista
#4. Se element[index] > element[index+1]
#5. Swap degli elementi. element[index], element[index+1] = element[index+1] = element[index]
#6. Index +=1 per avanzare nella lista
#7. Fine del primo loop. Il numero piú grande sara' alla destra (possibilità di ottimizzare il codice in seguito)
#8. Ripetizione del loop n volte. 
#9. Quando non si verifica piu' la condizione element[index] > element[index+1] chiusura del while loop (swap_flag = false).