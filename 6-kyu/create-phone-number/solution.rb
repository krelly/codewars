def createPhoneNumber(numbers)
  numbers = numbers.join
  "(#{numbers[0..2]}) #{numbers[3..5]}-#{numbers[6..9]}"
end