def duplicate_encode(word)
  chars = word.downcase.chars
  frequencies = chars.group_by(&:itself)
  chars.map { |c| frequencies[c].one? ? '(' : ')'}.join
end