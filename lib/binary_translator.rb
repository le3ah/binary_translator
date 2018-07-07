require 'pry'

class BinaryTranslator
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
      "turing" => "010100010101010010001001001110000111"
    }
  end

   def translate(letter)
     downcased = letter.downcase
     @translation = @alpha_to_binary[downcased]
     return @translation
   end

 end


 #scratch work re-inventing the wheel...like I do
   # def translate_2(letter)
   #   letter.split('').each do |i|
   #      return i
   #      @translation = @alpha_to_binary[i]
   #   end
   #  end

   #loop over each letter in a string
