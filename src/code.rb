def roman_to_arabic(roman)
  token = roman.chars.map do |roman|
    TokenFactory.create(roman)
  end

  result = 0
  last_token = TokenFactory.create('I')
  tmp = 0

  token.each do |token|
    token_value = token.value

    if last_token.value < token_value
      result = result - tmp
      # TODO: Better naming
      tmp = 0
    end

    tmp += token_value

    last_token = token
  end

  result + tmp
end

class Token < Struct.new(:value)
end

class TokenFactory
  def self.create(roman)
    values = {
      'I' => 1,
      'V' => 5
    }

    Token.new(values[roman])
  end
end
