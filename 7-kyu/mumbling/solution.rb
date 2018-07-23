def accum(s)
	s.chars.map.with_index do |char, index|
    (char * (index+1)).capitalize
  end.join('-')
end