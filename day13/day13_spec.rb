# frozen_string_literal: true

require_relative 'day13'

RSpec.describe 'Day 13' do
  let(:input) do
    "6,10\n" \
    "0,14\n" \
    "9,10\n" \
    "0,3\n" \
    "10,4\n" \
    "4,11\n" \
    "6,0\n" \
    "6,12\n" \
    "4,1\n" \
    "0,13\n" \
    "10,12\n" \
    "3,4\n" \
    "3,0\n" \
    "8,4\n" \
    "1,10\n" \
    "2,14\n" \
    "8,10\n" \
    "9,0\n" \
    "\n" \
    "fold along y=7\n" \
    "fold along x=5\n"
  end

  it 'counts dots' do
    expect(day13p1(input)).to eq(17)
  end
end

RSpec.describe Dot do
  describe '#map_fold' do
    it 'maps y fold' do
      dot = Dot.new(2, 14)
      fold = Fold.new('y', 7)

      dot.map_fold(fold)
      expect(dot.x).to eq(2)
      expect(dot.y).to eq(0)
    end

    it 'maps x fold' do
      dot = Dot.new(6, 0)
      fold = Fold.new('x', 5)

      dot.map_fold(fold)
      expect(dot.x).to eq(4)
      expect(dot.y).to eq(0)
    end
  end
end
