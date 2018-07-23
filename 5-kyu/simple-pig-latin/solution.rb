def pig_it text
  text.gsub(/\w+/){ |word| "#{word[1..-1]}#{word[0]}ay"}
end