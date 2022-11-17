def decode_char(char = ' ')
  morse_decode = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                   '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                   '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                   '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
                   '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
                   '---..' => '8', '----.' => '9', '-----' => '0' }
  morse_decode[char]
end

def decode_word(word)
  my_array = word.split
  res = ''
  my_array.each do |char|
    res += decode_char(char) if decode_char(char)
  end
  res
end

def decode(sen)
  my_array = sen.split('   ')
  res = ''
  my_array.each do |word|
    res += "#{decode_word(word)} "
  end
  res
end
puts(decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
