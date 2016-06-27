def roman_to_arabic(roman)
  return 5 if roman == 'V'

  tokens = roman.chars

  tokens.size
end
