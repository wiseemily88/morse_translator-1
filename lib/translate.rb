
class Translate
attr_reader :dictionary

  def initialize
    @dictionary = {}
  end

  def dictionary_filled
    @dictionary = { "a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..",
      "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....", "i" => "..",
      "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.",
      "o" => "---", "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...",
      "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-",
      "y" => "-.--", "z" => "--.."}
    end


  def eng_to_morse(phrase)
    phrase_array = phrase.split(//)
    letter_count = phrase_array.count.to_i

    (letter_count).times do |letter|
      index_position = 0
      morse_letter += "#{dictionary[phrase_array[index_position]]}"
      index_position += 1
    end
    morse_letter
  end

  end



  # 1  .----
  # 2  ..---
  # 3  ...--
  # 4  ....-
  # 5  .....
  # 6  -....
  # 7  --...
  # 8  ---..
  # 9  ----.
  # 0  -----
  # .  .-.-.-
  # ,  --..--
  # ?  ..--..
