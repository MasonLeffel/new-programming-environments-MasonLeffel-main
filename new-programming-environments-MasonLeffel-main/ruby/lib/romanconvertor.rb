def fromRoman(romanNumber)
    # Raise an error if the string contains invalid characters or is in lowercase
  raise TypeError, 'Invalid Roman numeral' if romanNumber !~ /^[MDCLXVI]+$/

  roman_mapping = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  arabic = 0
  i = 0
  while i < romanNumber.length
      # Check if there is a valid two-character numeral
    if i + 1 < romanNumber.length && roman_mapping[romanNumber[i..i+1]]
      arabic += roman_mapping[romanNumber[i..i+1]]
      i += 2
    else
      arabic += roman_mapping[romanNumber[i]]
      i += 1
    end
  end

  arabic
end


def toRoman(arabicNumber)

  # Raise an error if the number is outside the valid range
  raise RangeError, 'Value must be between 1 and 3999' if arabicNumber <= 0 || arabicNumber >= 4000

  roman_mapping = [
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I']
  ]

  roman = ''
  roman_mapping.each do |value, letter|
    while arabicNumber >= value
      roman << letter
      arabicNumber -= value
    end
  end
  roman


end