# DO NOT CHANGE ANYTHING IN THIS FILE!

require "test/unit"
require_relative "../romanconvertor"

class TestRomanConvertor < Test::Unit::TestCase

    @@randomValues = {
        15 => "XV",
        6 => "VI",
        78 => "LXXVIII",
        103 => "CIII"
    }

    def test_fromRoman_randomSuccessfulValues
        @@randomValues.each{ |key, value| assert_equal(key, fromRoman(value)) }
    end
   
end