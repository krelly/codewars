class Calculator
  OPERATORS = [ %w(/ *), %w(+ -)]

  def evaluate(str)
    stack = str.split
    regexps = OPERATORS.map{|e| Regexp.union(e)}
    current_level = 0
    loop do
      i = stack.index {|op| op =~ regexps[current_level]}
      if i.nil?
        current_level += 1
        current_level + 1 > regexps.length ? break : next
      end
      left, operator, right = stack.slice!(i - 1, 3)
      result = Integer(left).send(operator, Integer(right))
      stack.insert(i - 1, result)
    end
    stack.first.to_i
  end
end