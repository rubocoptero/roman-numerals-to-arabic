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
  last_token = TokenFactory.create('I')
  tmp = 0

  tokens.each_index do |i|
    token = tokens[i]
    token_value = tokens2[i].value

    if last_token.value < token_value
      result = result - tmp
      # TODO: Better naming
      tmp = 0
    end

    tmp += token_value

    last_token = TokenFactory.create(token)
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
