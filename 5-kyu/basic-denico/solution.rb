def de_nico(key,msg)
  # sort key letters
  mapping = key.chars.sort.each_with_index.each_with_object({}) {|(e,i), h| h[e] = i}
  numeric_key = key.chars.each_with_index.map { |e| mapping[e] }  # split message into chunks with size of a key
  arr = msg.chars.each_slice(key.length).to_a
  # transpose array containing message (to )
  transposed = arr[0].zip(*arr[1..-1])
  transposed.values_at(*numeric_key).transpose.join.rstrip
end