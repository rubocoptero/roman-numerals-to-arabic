require_relative './../src/code'

describe 'Roman Numerals' do
  # Initial
  it 'I is 1' do
    arabic = roman_to_arabic('I')

    expect(arabic).to eq(1)
  end

  # Triangulation
  it 'III is 3' do
    arabic = roman_to_arabic('III')

    expect(arabic).to eq(3)
  end


  # Adding V
  it 'V is 5' do
    arabic = roman_to_arabic('V')

    expect(arabic).to eq(5)
  end
end

