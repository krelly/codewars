def is_square(x)
  return false if x < 0
  Math.sqrt(x) % 1 == 0
end