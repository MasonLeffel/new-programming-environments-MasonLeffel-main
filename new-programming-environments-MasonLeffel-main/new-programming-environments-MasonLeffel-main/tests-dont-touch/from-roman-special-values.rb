# DO NOT CHANGE ANYTHING IN THIS FILE!

require "test/unit"
require_relative "../romanconvertor"

class TestRomanConvertor < Test::Unit::TestCase

    @@specialValues = {
        1 => "I",
        5 => "V",
        10 => "X",
        50 => "L",
        100 => "C",
        500 => "D",
        1000 => "M"
    }

    def test_fromRoman_specialValues
        @@specialValues.each{ |key, value| assert_equal(key, fromRoman(value)) }
    end
   
end