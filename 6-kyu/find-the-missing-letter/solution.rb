def find_missing_letter(arr)
  alphabet = [*'a'..'z'] + [*'A'..'Z']
  letter_indexes = arr.map{|letter| alphabet.index(letter)}
  letter_indexes.each_cons(2) do |prev, current|
    return alphabet[prev+1] unless current == prev + 1
  end
end