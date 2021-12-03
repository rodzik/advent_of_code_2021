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
