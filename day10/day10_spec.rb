# frozen_string_literal: true

require_relative 'day10'

RSpec.describe 'Day 10' do
  let(:input) do
    [
      '[({(<(())[]>[[{[]{<()<>>',
      '[(()[<>])]({[<{<<[]>>(',
      '{([(<{}[<>[]}>{[]{[(<()>',
      '(((({<>}<{<{<>}{[]{[]{}',
      '[[<[([]))<([[{}[[()]]]',
      '[{[{({}]{}}([{[{{{}}([]',
      '{<[[]]>}<{[{[{[]{()[[[]',
      '[<(<(<(<{}))><([]([]()',
      '<{([([[(<>()){}]>(<<{{',
      '<{([{{}}[<[[[<>{}]]]>[]]'
    ]
  end

  it 'validates lines' do
    expect(day10p1(input)).to eq(26397)
  end

  it 'finds line completion score' do
    expect(day10p2(input)).to eq(288957)
  end
end
