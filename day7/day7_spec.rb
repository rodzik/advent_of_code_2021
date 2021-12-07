# frozen_string_literal: true

require_relative 'day7'

RSpec.describe 'Day 7' do
  it 'finds fuel expense for the best position' do
    crab_positions = [16, 1, 2, 0, 4, 2, 7, 1, 2, 14]

    expect(day7p1(crab_positions)).to eq(37)
  end

  it 'finds fuel expense for the best position' do
    crab_positions = [16, 1, 2, 0, 4, 2, 7, 1, 2, 14]

    expect(day7p2(crab_positions)).to eq(168)
  end
end
