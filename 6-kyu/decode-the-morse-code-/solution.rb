def decodeMorse(morseCode)
  morseCode.strip.split('   ').map do |word|
    word.split.map{ |letter_code| MORSE_CODE[letter_code] }.join
  end.join(' ')
end