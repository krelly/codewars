def iq_test(numbers)
  numbers = numbers.split.map &:to_i
  differs_from_others = numbers.partition(&:odd?).select(&:one?)[0][0]
  numbers.index(differs_from_others) + 1
end