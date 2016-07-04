def tokenize(roman)
  roman.chars.map do |symbol|
    TokenFactory.create(symbol)
  end
end

class Roman
  def initialize(numeral)
    @numeral = numeral
  end

  def to_arabic
    tokens = tokenize(@numeral)

    result = 0
    last_token = tokens.first
    partial_sum = 0

    tokens.each do |token|
      if last_token < token
        result = result - partial_sum
      else
        result = result + partial_sum
      end

      partial_sum = 0

      partial_sum += token.value

      last_token = token
    end

    result + partial_sum
  end

  private

  def tokenize(roman)
    roman.chars.map do |symbol|
      TokenFactory.create(symbol)
    end
  end
end

def roman_to_arabic(roman)
  Roman.new(roman).to_arabic
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
