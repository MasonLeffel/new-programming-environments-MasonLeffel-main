# DO NOT CHANGE ANYTHING IN THIS FILE!

require "test/unit"
require_relative "../romanconvertor"

class TestRomanConvertor < Test::Unit::TestCase

    def test_number4000
        assert_raise RangeError do
            toRoman(4000)
        end
    end
   
end