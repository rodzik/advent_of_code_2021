def day3p1(input)
  counter = input[0].split("").map(&:to_i)

  input[1..].each do |string|
    string.split("").each_with_index { |n, i| counter[i] += 1 if n == "1" }
  end

  gamma = counter.map { |e| e > input.length / 2 ? 1 : 0 }.join.to_i(2)
  epsilon = ("1" * counter.length).to_i(2) ^ gamma

  gamma * epsilon
end

input = File.read('day3/input.txt').split("\n")
p day3p1(input)

def day3p2(input)
  array = input.dup

  i = 0
  while array.size > 1
    ones, zeros = array.partition { |e| e[i] == "1" }
    array = ones.length >= zeros.length ? ones : zeros
    i += 1
  end
  oxygen = array[0].to_i(2)

  array = input.dup
  i = 0
  while array.size > 1
    ones, zeros = array.partition { |e| e[i] == "1" }
    array = ones.length < zeros.length ? ones : zeros
    i += 1
  end
  co2 = array[0].to_i(2)

  oxygen * co2
end

p day3p2(input)
