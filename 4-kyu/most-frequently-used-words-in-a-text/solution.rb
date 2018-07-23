def top_3_words(text)
  text.scan(/\w[(\w\')]*/).each_with_object(Hash.new(0)){|w,h| h[w.downcase] += 1}.sort {|a,b| b[1]<=>a[1]}.map(&:first).take(3)
end