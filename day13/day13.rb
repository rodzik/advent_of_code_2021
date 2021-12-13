# frozen_string_literal: true

require_relative 'sheet'

def day13p1(input)
  s = Sheet.for(input)
  s.fold
  s.dot_count
end

def day13p2(input)
  s = Sheet.for(input)
  s.fold_all
  s.print
end

input = File.read('day13/input.txt')
p day13p1(input)
day13p2(input)
