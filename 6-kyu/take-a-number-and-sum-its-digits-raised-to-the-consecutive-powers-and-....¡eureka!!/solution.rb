def sum_dig_pow(a, b)
   (a..b).select { |n| n == digits_pow(n) }
end

def digits_pow(num)
  num.to_s.chars.each_with_index.reduce(0) { |p,(c,i)| p += c.to_i**(i+1) }
end