def prefill(n,v = nil)
  Array.new(Integer(n)) {v}
rescue
  raise(TypeError, "#{n} is invalid") 
end