require_relative 'digit'

RSpec.describe Digit do
  let(:key) do
    {
      'a' => 'c',
      'b' => 'f',
      'c' => 'g',
      'd' => 'a',
      'e' => 'b',
      'f' => 'd',
      'g' => 'e'
    }
  end

  it 'returns proper values' do
    expect(described_class.new('acedgfb', key).value).to eq('8')
    expect(described_class.new('cdfbe', key).value).to eq('5')
    expect(described_class.new('gcdfa', key).value).to eq('2')
    expect(described_class.new('fbcad', key).value).to eq('3')
    expect(described_class.new('dab', key).value).to eq('7')
    expect(described_class.new('cefabd', key).value).to eq('9')
    expect(described_class.new('cdfgeb', key).value).to eq('6')
    expect(described_class.new('eafb', key).value).to eq('4')
    expect(described_class.new('cagedb', key).value).to eq('0')
    expect(described_class.new('ab', key).value).to eq('1')
  end
end
