NUMBERS = %w(zero one two three four five six seven eight nine).map.with_index { |k, i| [k,i] }.to_h

def average_string(s)
  numbers = s.split.map{ |n| NUMBERS[n] }
  if numbers.include?(nil) || numbers.empty?
    'n/a'
  else
    sum = numbers.reduce(:+)/numbers.length.floor
    sum < 10 ?  NUMBERS.invert[sum.floor] : 'n/a'
  end
end
