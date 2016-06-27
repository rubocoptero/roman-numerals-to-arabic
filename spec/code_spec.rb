require_relative './../src/code'

describe 'Roman Numerals' do
  [
    ['I', 1], # Initial
    ['III', 3], # Triangulate
    ['V', 5], # Add V symbol
    ['IV', 4], # Add substraction
    ['X', 10], # Add X symbol
    ['IX', 9], # User story test case
    ['MLXVI', 1066], # User story test case
    ['MCMLXXXIX', 1989], # User story test case
  ].each do |roman, arabic|
    it "#{roman} is #{arabic}" do
      expect_roman(roman).to eq(arabic)
    end
  end

  def expect_roman(roman)
    expect(roman_to_arabic(roman))
  end
end

