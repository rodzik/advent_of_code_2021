def day10p1(input)
  score = {
    ')' => 3,
    ']' => 57,
    '}' => 1197,
    '>' => 25_137
  }
  brackets = {
    '(' => ')',
    '[' => ']',
    '{' => '}',
    '<' => '>'
  }

  illegals = []
  stack = []

  input.each do |line|
    line.chars.each do |c|
      if brackets.keys.include?(c)
        stack << c
      else
        next if brackets[stack.pop] == c

        illegals << c
      end
    end

    stack.clear
  end

  illegals.map { |i| score[i] }.sum
end

input = File.read('day10/input.txt').split("\n")
p day10p1(input)
