module Enumerable
  # inject(initial, sym) → obj
  # inject(sym) → obj
  # inject(initial) { |memo, obj| block } → obj
  # inject { |memo, obj| block } → obj
  #
  # If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element.
  # If you specify a symbol instead, then each element in the collection will be passed to the named method of memo.
  # In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo
  # is the return value for the method.
  def accumulate(*opts, &block)
    proc = nil
    if opts.empty?
      initial = self.first
      start_el = true
    elsif opts.length == 1
      if block_given?
        initial = opts[0]
      else
        proc = opts[0].to_proc
        initial = self.first
        start_el = true
      end
    elsif opts.length == 2
      initial = opts[0]
      proc = opts[1].to_proc
    else
      raise ArgumentError, 'wrong number of arguments (given 3, expected 0..2)'
    end

    self.drop(start_el ? 1 : 0).each {|a| initial = proc.nil? ? block.call(initial, a) : proc.call(initial, a) }
    initial
  end
end
