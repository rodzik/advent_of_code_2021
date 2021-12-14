# frozen_string_literal: true

require_relative 'day14'

RSpec.describe 'Day 14' do
  let(:input) do
    "NNCB\n" \
    "\n" \
    "CH -> B\n" \
    "HH -> N\n" \
    "CB -> H\n" \
    "NH -> C\n" \
    "HB -> C\n" \
    "HC -> B\n" \
    "HN -> C\n" \
    "NN -> C\n" \
    "BH -> H\n" \
    "NC -> B\n" \
    "NB -> B\n" \
    "BN -> B\n" \
    "BB -> N\n" \
    "BC -> B\n" \
    "CC -> N\n" \
    "CN -> C\n" \
  end

  it 'returns frequency difference after 10 steps' do
    expect(day14(input, 10)).to eq(1588)
  end

  it 'returns frequency difference after 40 steps' do
    expect(day14(input, 40)).to eq(2188189693529)
  end
end
