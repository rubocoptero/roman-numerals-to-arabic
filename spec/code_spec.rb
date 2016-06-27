require_relative './../src/code'

describe 'Roman Numerals' do
  [
    ['I', 1], # Initial
    ['III', 3], # Triangulate
    ['V', 5], # Add V symbol
    ['IV', 4], # Add substraction
  ].each do |roman, arabic|
    it "#{roman} is #{arabic}" do
      expect_roman(roman).to eq(arabic)
    end
  end

  # TODO: Generalize even more
  def expect_roman(roman)
    expect(roman_to_arabic(roman))
  end
end

