def roman_to_arabic(roman)
  values = {
    'I' => 1,
    'V' => 5
  }

  tokens = roman.chars
  result = 0
  last_token = 'I'
  tmp = 0

  tokens.each do |token|
    if values[last_token] < values[token]
      result = result - tmp
      tmp = 0
    end

    tmp += values[token]

    last_token = token
  end

  result + tmp
end
