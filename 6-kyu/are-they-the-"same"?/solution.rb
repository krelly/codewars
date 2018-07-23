def comp(array1, array2)
  return false if array2.nil?
  array1.sort.zip(array2.sort).all? {|a,b| a*a == b}
end