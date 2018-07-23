ALPHABET = [*('a'..'z')].join

def transform(c, shift, decode = false)
  return c if !ALPHABET.include?(c.downcase)
  index = (ALPHABET.index(c.downcase) + shift) % ALPHABET.length
  ch = ALPHABET[index]
  /[[:upper:]]/ =~ c ? ch.upcase : ch
end

def movingShift(s, shift)
  cipertext = s.chars.each_with_index.map {|c, i| transform(c, shift + i)}
  slice_size = (s.length / 5.0).ceil
  res = cipertext.each_slice(slice_size).map(&:join)
  res.length == 4 ? res << '' : res
end

def demovingShift(arr, shift)
  arr.join.chars.each_with_index.map {|c, i| transform(c, -(shift + i))}.join
end