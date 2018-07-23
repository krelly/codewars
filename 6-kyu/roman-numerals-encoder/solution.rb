ROMAN_NUMBERS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
  }
					

def solution(number)
  roman = ''
  ROMAN_NUMBERS.map do |n, roman_symbol|
    roman << roman_symbol * (number/n)
    number %= n
  end
  roman
end
