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

def day1p2(input)
  counter = 0
  previos_sum = -Float::INFINITY

  (input.length - 3).times do |i|
    current_sum = input[i] + input[i + 1] + input[i + 2]
    counter += 1 if current_sum > previos_sum
    previos_sum = current_sum
  end

  counter
end

p day1p2(input)
