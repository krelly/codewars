def divisors(n)
  divisors = (2...n).select {|num| n % num == 0}
  if divisors.empty?
    "#{n} is prime" 
  else
    divisors
  end
end