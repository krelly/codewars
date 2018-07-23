def tree_by_levels(node)
  return [] if node.nil?
  levels = [[node]]
  loop do
    current = levels
                      .last
                      .flat_map {|n| [n.left, n.right] if n.kind_of? TreeNode}
                      .compact
    break if current.empty?
    levels << current
  end
  levels.flatten.map &:value
end