def validBraces(braces)
  opening_braces = '{[('.chars
  closing_braces = '}])'.chars
  stack = []
  valid = braces.chars.all? do |brace|
    if opening_braces.include? brace
      stack << opening_braces.index(brace)
      true
    elsif stack.last == closing_braces.index(brace)
      stack.pop
      true
    else
      false
    end
  end
  stack.empty? ? valid : false
end