require 'pry'

def day7p1(positions)
  positions.sort!
  prev_sum = Float::INFINITY
  i = 0

  while i < positions.length
    sum = positions.reduce(0) { |acc, e| acc + (e - positions[i]).abs }
    break if sum > prev_sum

    prev_sum = sum
    i += 1
  end

  prev_sum
end

input = File.read('day7/input.txt').split(',').map(&:to_i)
p day7p1(input)
