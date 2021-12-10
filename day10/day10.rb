def day10p1(input)
  score = {
    ')' => 3,
    ']' => 57,
    '}' => 1197,
    '>' => 25_137
  }

  input.flat_map { |l| validate(l)[0] }.map { |i| score[i] }.sum
end

def day10p2(input)
  score = {
    ')' => 1,
    ']' => 2,
    '}' => 3,
    '>' => 4
  }

  result = input.map! { |l| validate(l)[1].inject(0) { |acc, e| acc * 5 + score[e] } }
                .select(&:positive?)
                .sort
  result[result.size / 2]
end

def validate(line)
  brackets = {
    '(' => ')',
    '[' => ']',
    '{' => '}',
    '<' => '>'
  }

  stack = []
  illegals = []

  line.chars.each do |c|
    if brackets.keys.include?(c)
      stack << c
    else
      next if brackets[stack.pop] == c

      illegals << c
    end
  end

  return [illegals, []] if illegals.any?

  missing = []
  missing << brackets[stack.pop] while stack.size > 0

  [illegals, missing]
end

input = File.read('day10/input.txt').split("\n")
p day10p1(input)
p day10p2(input)
