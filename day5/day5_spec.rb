# frozen_string_literal: true

require_relative 'day5'

RSpec.describe 'Day 5' do
  it 'calculates power consumption' do
    input = <<-INPUT
      0,9 -> 5,9
      8,0 -> 0,8
      9,4 -> 3,4
      2,2 -> 2,1
      7,0 -> 7,4
      6,4 -> 2,0
      0,9 -> 2,9
      3,4 -> 1,4
      0,0 -> 8,8
      5,5 -> 8,2
    INPUT

    expect(day5p1(input)).to eq(5)
  end
end


