def tribonacci(signature,n)
  (n-3).times do |i|
    signature << signature[i..i+3].reduce(:+)
  end
  signature.take(n)
end