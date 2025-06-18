dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Solution 1 using EACH
def substrings(string, dictionary)
    my_hash = Hash.new
    dictionary.each do |word|
    result = string.downcase.scan(word)
        if result.count > 0
        my_hash[word] = result.count 
        end
    end
    my_hash
end

# Solution 2 using REDUCE
def substrings_two(string, dictionary)
    dictionary.reduce(Hash.new(0)) do |accumulator, current_word|
        count = string.downcase.scan(current_word).count
        if count > 0
            accumulator[current_word] = count
        end
    accumulator
    end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings_two("Howdy partner, sit down! How's it going?", dictionary)