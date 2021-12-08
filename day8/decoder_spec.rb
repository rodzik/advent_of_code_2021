require_relative 'decoder'

RSpec.describe Decoder do
  let(:input) { 'acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb eafb cagedb ab' }

  describe '#key' do
    it 'returns key' do
      decoder = described_class.new(input)
      expect(decoder.key).to eq(
        {
          'a' => 'c',
          'b' => 'f',
          'c' => 'g',
          'd' => 'a',
          'e' => 'b',
          'f' => 'd',
          'g' => 'e'
        }
      )
    end
  end
end
