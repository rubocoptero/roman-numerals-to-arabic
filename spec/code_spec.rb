require_relative './../src/code'

describe 'Roman Numerals' do
  it 'I is 1' do
    arabic = roman_to_arabic('I')

    expect(arabic).to eq(1)
  end

  it 'III is 3' do
    arabic = roman_to_arabic('III')

    expect(arabic).to eq(3)
  end
end

