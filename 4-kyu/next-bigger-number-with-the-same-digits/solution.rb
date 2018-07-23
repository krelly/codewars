def next_bigger(n)
  digits = n.to_s.chars.map(&:to_i)
  n = digits.length
  i = (n - 1).downto(0).find {|i| digits[i-1] < digits[i]}
  return -1 if i.nil? || i == 0
  left = digits[i-1]
  right_idx = digits[i..-1].rindex {|e| (e > left)}
  digits[i - 1], digits[right_idx + i] = digits[right_idx + i], digits[i - 1]
  (digits[0, i] + digits[i..-1].sort).join.to_i
end