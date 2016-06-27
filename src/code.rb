def tokenize(roman)
  roman.chars.map do |roman|
    TokenFactory.create(roman)
  end
end

def roman_to_arabic(roman)
  tokens = tokenize(roman)

  result = 0
  last_token = TokenFactory.create('I')
  partial_sum = 0

  tokens.each do |token|
    token_value = token.value

    if last_token.value < token_value
      result = result - partial_sum
      partial_sum = 0
    end

    partial_sum += token_value

    last_token = token
  end

  result + partial_sum
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
