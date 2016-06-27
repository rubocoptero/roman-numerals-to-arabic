require_relative './../src/code'

describe 'Roman Numerals' do
  [
    ['I', 1], # Initial
    ['III', 3], # Triangulate
    ['V', 5], # Add V symbol
    ['IV', 4], # Add substraction
    ['X', 10], # Add X symbol
  ].each do |roman, arabic|
    it "#{roman} is #{arabic}" do
      expect_roman(roman).to eq(arabic)
    end
  end

  def expect_roman(roman)
    expect(roman_to_arabic(roman))
  end
end

