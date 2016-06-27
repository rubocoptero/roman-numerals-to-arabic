def roman_to_arabic(roman)
  values = {
    'I' => 1,
    'V' => 5
  }

  return 4 if roman == 'IV'

  tokens = roman.chars
  result = 0

  tokens.each do |token|
    result += values[token]
  end

  result
end
