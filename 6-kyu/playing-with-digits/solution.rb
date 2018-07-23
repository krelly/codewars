def dig_pow(n, p)
    sum = n.to_s.chars.map(&:to_i)
                   .each_with_index
                   .reduce(0) { |sum, (n,i)| sum + n**(p+i) }
    sum % n == 0 ? sum / n : -1
end