@MORSE_DIC = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def process_char(letter)
  # @ is immutable symbol used as referencing method names
  @this_letter = @MORSE_DIC[letter]
  @this_letter
end

def word_decoder(word)
 @letters = word.split
 @current_word = ''
 @letters.each do |letter|
  process_char(letter)
  @current_word += process_char(letter)
 end
 print "#{@current_word}"
end

def msg_decoder(message)
  @words = message.split('   ')
  @words.each do |word|
    word_decoder(word)
  end
end



msg_decoder('-- -.--   -. .- -- .')
