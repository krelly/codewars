
ROMAN_NUMBERS = {
        "M" => 1000,
        "D" => 500,
        "C" => 100,
        "L" => 50,
        "X" => 10,
        "V" => 5,
        "I" => 1
}


def solution(roman)
  roman.chars.reverse_each.map {|s| ROMAN_NUMBERS[s]}.reduce do |sum, n|
    p sum,n
    if n == 1 && sum > 4
      sum -= 1
    else
      sum += n
    end
  end
end