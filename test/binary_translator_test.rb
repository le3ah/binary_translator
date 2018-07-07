require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'
require 'pry'

class BinaryTranslatorTest < Minitest::Test

    def test_it_exists
      bt = BinaryTranslator.new
      assert_instance_of BinaryTranslator, bt
    end

   def test_translate_method
     bt = BinaryTranslator.new
     #binding.pry
     assert_equal "000001", bt.translate("a")
   end

  def test_translate_method_with_different_single_input
    bt = BinaryTranslator.new
    assert_equal "011010", bt.translate("z")
  end

  def test_it_can_translate_string_turing
    bt = BinaryTranslator.new
    #binding.pry
    assert_equal "010100010101010010001001001110000111", bt.translate("turing")
  end

  def test_it_can_make_capital_letters_work_too
    bt = BinaryTranslator.new
    assert_equal "000001", bt.translate("A")
  end

  def test_if_spaces_return_anything
    bt = BinaryTranslator.new
    binding.pry
    assert_equal "000000", bt.translate(" ")
  end

end
