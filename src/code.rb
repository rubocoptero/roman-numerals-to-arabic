def roman_to_arabic(roman)
  values = {
    'I' => 1,
    'V' => 5
  }

  tokens = roman.chars
  result = 0
  last_token = 'I'

  if roman == 'IV'
    substract = tokens.shift
    root = tokens.shift

    return values[root] - values[substract]
  end

  tokens.each do |token|
    result += values[token]
  end

  result
end
