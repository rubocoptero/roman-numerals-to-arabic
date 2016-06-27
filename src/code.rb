def roman_to_arabic(roman)
  values = {
    'I' => 1,
    'V' => 5
  }

  tokens2 = roman.chars.map do |roman|
    TokenFactory.create(roman)
  end
  tokens = roman.chars

  result = 0
  last_token = 'I'
  tmp = 0

  tokens.each do |token|
    if values[last_token] < values[token]
      result = result - tmp
      # TODO: Better naming
      tmp = 0
    end

    tmp += values[token]

    last_token = token
  end

  result + tmp
end

Token = Struct.new(:value)

class TokenFactory
  def self.create(roman)
    values = {
      'I' => 1,
      'V' => 5
    }

    Token.new(values[roman])
  end
end
