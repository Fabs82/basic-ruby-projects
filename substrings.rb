dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# First solution using each
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

puts substrings("Howdy partner, sit down! How's it going?", dictionary)