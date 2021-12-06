# frozen_string_literal: true

require_relative 'day6'

RSpec.describe 'Day 6' do
  it 'counts fish after 18 days' do
    fish_list = '3,4,3,1,2'

    expect(day6p1(fish_list, 18)).to eq(26)
  end

  it 'counts fish after 80 days' do
    fish_list = '3,4,3,1,2'

    expect(day6p1(fish_list, 80)).to eq(5934)
  end
end

RSpec.describe Lanternfish do
  describe '#tick' do
    it 'decreases days_till_offspring' do
      fish = described_class.new(2)
      fish.tick
      expect(fish.days_till_offspring).to eq(1)
    end

    it 'returns self when days_till_offspring > 1' do
      fish = described_class.new(2)
      expect(fish.tick).to eq([fish])
    end

    it 'returns self and new fish when days_till_offspring = 0' do
      fish = described_class.new(0)
      expect(fish.tick).to eq([Lanternfish.new(6), Lanternfish.new(8)])
    end
  end
end
