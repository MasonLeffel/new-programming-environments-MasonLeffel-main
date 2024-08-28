# DO NOT CHANGE ANYTHING IN THIS FILE!

require "test/unit"
require_relative "../romanconvertor"

class TestRomanConvertor < Test::Unit::TestCase

    def test_toRoman_repeatingSingleDigit
        assert_equal("I", toRoman(1))
        assert_equal("III", toRoman(3))
    end

end