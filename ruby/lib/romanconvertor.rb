def fromRoman(romanNumber)
    # Replace the following line with the actual code!
    raise NotImplementedError
end


    def toRoman(arabicNumber)
        # Raise an error if the number is outside the valid range
        raise RangeError, "Value must be between 1 and 3999" if arabicNumber <= 0 || arabicNumber >= 4000

        roman_mapping = [
          [1000, "M"],
          [900, "CM"],
          [500, "D"],
          [400, "CD"],
          [100, "C"],
          [90, "XC"],
          [50, "L"],
          [40, "XL"],
          [10, "X"],
          [9, "IX"],
          [5, "V"],
          [4, "IV"],
          [1, "I"]
        ]

        roman = ""
        roman_mapping.each do |value, letter|
            while arabicNumber >= value
                roman << letter
                arabicNumber -= value
            end
            end
end
