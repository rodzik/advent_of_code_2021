# frozen_string_literal: true

require_relative 'day3'

RSpec.describe 'Day 3' do
  it 'calculates power consumption' do
    input = %w[
      00100
      11110
      10110
      10111
      10101
      01111
      00111
      11100
      10000
      11001
      00010
      01010
    ]

    expect(day3p1(input)).to eq(198)
  end
end
