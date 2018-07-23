def loop_size(node)
  path = [node]
  while node = node.next
    break path.length-path.index(node) if path.include? node
    path << node
  end
end

