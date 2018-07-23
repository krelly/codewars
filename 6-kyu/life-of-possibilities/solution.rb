# Accepts a hash of words to an array of translations.
# Returns a hash of words mapped to an array of all possible combinations of translations.
def possibilities(words)
  words.each do |word, translations|
    sorted = translations.sort
    words[word] = sorted.each_index.map {|i|
      sorted.combination(i+1).to_a
    }.flatten(1).sort
  end
end