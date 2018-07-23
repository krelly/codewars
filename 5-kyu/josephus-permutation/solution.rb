def josephus(items,k)
  out = []
  while !items.empty?
    out << items.rotate!(k-1).shift
  end
  out
end