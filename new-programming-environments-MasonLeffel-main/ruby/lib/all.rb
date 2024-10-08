# frozen_string_literal: true
# DO NOT CHANGE ANYTHING IN THIS FILE!

require 'test/unit'
require_relative 'romanconvertor'

class TestRomanConvertor < Test::Unit::TestCase

  @@specialValues = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  @@randomValues = {
    15 => 'XV',
    6 => 'VI',
    78 => 'LXXVIII',
    103 => 'CIII'
  }

  def test_numberMoreThan4000
    assert_raise RangeError do
      toRoman(4001)
    end
  end

  def test_negativeNumber
    assert_raise RangeError do
      toRoman(-1)
    end
  end

  def test_toRoman_randomSuccessfulValues
    @@randomValues.each{ |key, value| assert_equal(value, toRoman(key)) }
  end

  def test_toRoman_specialValues
    @@specialValues.each{ |key, value| assert_equal(value, toRoman(key)) }
  end

  def test_toRoman_repeatingSingleDigit
    assert_equal('I', toRoman(1))
    assert_equal('III', toRoman(3))
  end

  def test_fromRomanInvalidChars
    assert_raise TypeError do
      fromRoman('hwiureh')
    end
  end

  def test_fromRoman_randomSuccessfulValues
    @@randomValues.each{ |key, value| assert_equal(key, fromRoman(value)) }
  end

  def test_fromRoman_specialValues
    @@specialValues.each{ |key, value| assert_equal(key, fromRoman(value)) }
  end

  def test_number4000
    assert_raise RangeError do
      toRoman(4000)
    end
  end

  def test_number0
    assert_raise RangeError do
      toRoman(0)
    end
  end

  def test_fromRomanValidButLowerCase
    assert_raise TypeError do
      fromRoman('ii')
    end
  end

    # This test fails if you modify the input parameter inside your function
    # DON'T MODIFY THE INPUT PARAMETER!!!

  def test_sanity
    original = 'MCDXCVIII'
    convertedArabic = fromRoman(original)
    convertedRoman = toRoman(convertedArabic)
    assert_equal(original, convertedRoman)
  end

end

