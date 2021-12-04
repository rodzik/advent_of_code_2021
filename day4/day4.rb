# frozen_string_literal: true

require 'pry'
require_relative 'reverse_bingo'

def day4p1(input)
  bingo = Bingo.new(input)
  bingo.play
  bingo.score
end

def day4p2(input)
  bingo = ReverseBingo.new(input)
  bingo.play
  bingo.score
end

input = File.read('day4/input.txt')
p day4p1(input)
p day4p2(input)
