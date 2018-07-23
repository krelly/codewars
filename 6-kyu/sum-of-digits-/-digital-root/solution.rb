def digital_root(n)
  n < 10 ? n : digital_root(n.to_s.chars.map(&:to_i).reduce(:+))
end