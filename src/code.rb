def roman_to_arabic(roman)
  values = {
    'I' => 1,
    'V' => 5
  }

  tokens = roman.chars
  result = 0

  tokens.each do |token|
    result += values[token]
  end

  result
end
