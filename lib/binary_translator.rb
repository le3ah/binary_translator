class BinaryTranslator
  attr_accessor :translate
  def initialize
    @alpha_to_binary = {
      "a" => "000001",
      "b" => "000010",
      "c" => "000011",
      "d" => "000100",
      "e" => "000101",
      "f" => "000110",
      "g" => "000111",
      "h" => "001000",
      "i" => "001001",
      "j" => "001010",
      "k" => "001011",
      "l" => "001100",
      "m" => "001101",
      "n" => "001110",
      "o" => "001111",
      "p" => "010000",
      "q" => "010001",
      "r" => "010010",
      "s" => "010011",
      "t" => "010100",
      "u" => "010101",
      "v" => "010110",
      "w" => "010111",
      "x" => "011000",
      "y" => "011001",
      "z" => "011010",
      " " => "000000"
    }
  end
  def translate(word)

    if word.length == 1
      @alpha_to_binary[word.downcase]
    else
      new_arr = word.downcase.split('')
      conversion = new_arr.map do |i|
      @alpha_to_binary[i]
      end
      conversion.join
    end
  end
  def translate_to_text(number)
        translation = number.chars.each_slice(6).map(&:join)
        new_alpha = translation.map do |x|
        @alpha_to_binary.invert[x]
      end
      new_alpha.join
  end
end
