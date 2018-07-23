def duplicate_count(text)
  text.chars.each_with_object(Hash.new(0)) {|c,h| h[c.downcase] += 1}.select {|k, v| v > 1}.length
end