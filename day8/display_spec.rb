require_relative 'display'

RSpec.describe Display do
  describe '#result' do
    it 'returns result' do
      input = 'acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb eafb cagedb ab | cdfeb fcadb cdfeb cdbaf'
      display = Display.new(input)
      expect(display.result).to eq(5353)
    end
  end
end
