require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'

class BinaryTranslatorTest < Minitest::Test

def test_operation_is_functional
  bt = BinaryTranslator.new
  assert_instance_of BinaryTranslator, bt
end

def test_translator_executes_a_letter
  bt = BinaryTranslator.new
  assert_equal "000001", bt.translate("a")
  assert_equal "011010", bt.translate("z")
end
def test_translator_executes_a_word
  bt = BinaryTranslator.new
  assert_equal "010100010101010010001001001110000111", bt.translate("turing")
end
def test_translator_operates_capital_letters
  bt = BinaryTranslator.new
  assert_equal "000001", bt.translate("A")
  assert_equal "010100010101010010001001001110000111", bt.translate("TURING")
end
def test_translator_works_on_spaces
  bt = BinaryTranslator.new
  assert_equal "000000", bt.translate(" ")
  assert_equal "", bt.translate("!@{$#%^&*()}")
  assert_equal "001000000101001100001100001111000000010111001111010010001100000100", bt.translate("Hello World!")
end
def test_reverse_translate
  bt = BinaryTranslator.new
  assert_equal "hello world", bt.translate_to_text("001000000101001100001100001111000000010111001111010010001100000100")
end
end
