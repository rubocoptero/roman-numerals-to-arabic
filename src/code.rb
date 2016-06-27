def tokenize(roman)
  roman.chars.map do |roman|
    TokenFactory.create(roman)
  end
end

def roman_to_arabic(roman)
  tokens = tokenize(roman)

  result = 0
  last_token = tokens.first
  partial_sum = 0

  tokens.each do |token|
    if last_token < token
      result = result - partial_sum
      partial_sum = 0
    else
      result += partial_sum
      partial_sum = 0
    end

    partial_sum += token.value

    last_token = token
  end

  result + partial_sum
end

class Token < Struct.new(:value)
  include Comparable

  def <=>(another)
    self.value <=> another.value
  end
end

class TokenFactory
  def self.create(roman)
    values = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }

    Token.new(values[roman])
  end
end
