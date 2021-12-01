# frozen_string_literal: true

def day1p1(input)
  counter = 0

  (input.length - 1).times do |i|
    counter += 1 if input[i + 1] > input[i]
  end

  counter
end

input = File.read('day1/input.txt').split("\n").map(&:to_i)
p day1p1(input)
