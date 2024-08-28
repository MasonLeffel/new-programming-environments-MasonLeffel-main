# DO NOT CHANGE ANYTHING IN THIS FILE!

require "test/unit"
require_relative "../romanconvertor"

class TestRomanConvertor < Test::Unit::TestCase

    def test_fromRomanValidButLowerCase
        assert_raise TypeError do
            fromRoman("ii")
        end
    end
   
end