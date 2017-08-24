gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'


class TranslateTest < Minitest::Test

 def test_translate_class_exists
   translator = Translate.new

   assert_instance_of Translate, translator
 end

 def test_eng_to_morse_method_returns_code_for_lower_case

   translator = Translate.new
   translator.eng_to_morse("hello world")
   expected = "......-...-..--- .-----.-..-..-.."
   assert_equal expected, translator.eng_to_morse.phrase
 end

end
