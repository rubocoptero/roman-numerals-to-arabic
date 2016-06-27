require_relative './../src/code'

describe 'Roman Numerals' do
  # Initial
  it 'I is 1' do
    expect_roman('I').to eq(1)
  end

  # Triangulation
  it 'III is 3' do
    expect_roman('III').to eq(3)
  end


  # Adding V
  it 'V is 5' do
    expect_roman('V').to eq(5)
  end

  # Substraction
  it 'IV is 4' do
    expect_roman('IV').to eq(4)
  end

  # TODO: Generalize even more
  def expect_roman(roman)
    expect(roman_to_arabic(roman))
  end
end

