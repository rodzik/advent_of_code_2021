# frozen_string_literal: true

require_relative 'day2'

RSpec.describe 'Day 2' do
  it 'calculates proper position' do
    commands = [
      'forward 5',
      'down 5',
      'forward 8',
      'up 3',
      'down 8',
      'forward 2'
    ]

    expect(day2p1(commands)).to eq(150)
  end

  it 'calculates proper position using aim' do
    commands = [
      'forward 5',
      'down 5',
      'forward 8',
      'up 3',
      'down 8',
      'forward 2'
    ]

    expect(day2p2(commands)).to eq(900)
  end
end
