def day7p1(positions)
  prev_sum = Float::INFINITY
  i = 0

  while i < positions.length
    sum = positions.reduce(0) { |acc, e| acc + (e - i).abs }
    break if sum > prev_sum

    prev_sum = sum
    i += 1
  end

  prev_sum
end

input = File.read('day7/input.txt').split(',').map(&:to_i)
p day7p1(input)

def day7p2(positions)
  prev_sum = Float::INFINITY
  i = 0

  while i < positions.length
    sum = positions.reduce(0) { |acc, e| acc + distance_sum((e - i).abs) }
    break if sum > prev_sum

    prev_sum = sum
    i += 1
  end

  prev_sum.to_i
end

def distance_sum(a)
  (a / 2.0) * (a + 1)
end

p day7p2(input)
