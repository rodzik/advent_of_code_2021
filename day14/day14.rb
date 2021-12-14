def day14(input, steps)
  rules = input.split("\n\n")[1].split("\n").map { |r| r.split(" -> ") }.to_h
  pairs = input.split("\n\n")[0].chars
  char_tally = Hash.new(0)
  pairs_tally = Hash.new(0)
  pairs.each { |c| char_tally[c] += 1 }
  pairs.each_cons(2) { |pair| pairs_tally[pair.join] += 1 }

  steps.times do
    pairs_tally.clone.each do |pair, occurences|
      a = pair[0]
      b = pair[1]
      c = rules[pair]
      char_tally[c] += occurences
      pairs_tally[pair] -= occurences
      pairs_tally[a + c] += occurences
      pairs_tally[c + b] += occurences
    end
  end

  min, max = char_tally.minmax_by { |k, v| v }.map { |e| e[1] }
  max - min
end

input = File.read('day14/input.txt')
p day14(input, 40)
