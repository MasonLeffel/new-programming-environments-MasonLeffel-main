# DO NOT CHANGE ANYTHING IN THIS FILE!

require "test/unit"
require_relative "../romanconvertor"

class TestRomanConvertor < Test::Unit::TestCase

    # This test fails if you modify the input parameter inside your function
    # DON'T MODIFY THE INPUT PARAMETER!!!

    def test_sanity
        original = "MCDXCVIII"
        convertedArabic = fromRoman(original)
        convertedRoman = toRoman(convertedArabic)
        assert_equal(original, convertedRoman)
    end
   
end