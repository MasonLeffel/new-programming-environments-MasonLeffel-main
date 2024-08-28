# DO NOT CHANGE ANYTHING IN THIS FILE!

require "test/unit"
require_relative "../romanconvertor"

class TestRomanConvertor < Test::Unit::TestCase

    def test_negativeNumber
        assert_raise RangeError do
            toRoman(-1)
        end
    end
   
end