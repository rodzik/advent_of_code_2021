# frozen_string_literal: true

require_relative 'day9'

RSpec.describe 'Day 9' do
  let(:input) do
    "2199943210\n" \
    "3987894921\n" \
    "9856789892\n" \
    "8767896789\n" \
    "9899965678\n"
  end

  it 'counts low points' do
    expect(day9p1(input)).to eq(15)
  end
end
