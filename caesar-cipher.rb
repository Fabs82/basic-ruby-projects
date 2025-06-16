def caesar_cipher(word, shift_number)
# Two lists containing the upper and lower case letters
  alphabet_lower = ('a'..'z').to_a
  alphabet_upper = ('A'..'Z').to_a
  
# the MAP method iterates through each letter of the word (transformed into a list)
  encrypted_word = word.chars.map do |letter| 
# check which alphabet includes the letter
# shift the letter using the index position of the given letter + the shift number. Modulo operator allows to deal with greater numbers 
    if alphabet_lower.include?(letter)
      alphabet_lower[(alphabet_lower.index(letter) + shift_number) % 26]
    elsif alphabet_upper.include?(letter)
       alphabet_upper[(alphabet_upper.index(letter) + shift_number) % 26]
    else
      letter
    end 
  end  
  return encrypted_word.join
end

puts caesar_cipher("What a  string!", 5)