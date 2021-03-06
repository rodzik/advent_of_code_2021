require_relative 'display'

def day8p1(displays)
  displays.flat_map do |d|
    output_digits = d.split(' | ')[1].split(' ')
    output_digits.select do |n|
      n.length <= 4 || n.length == 7
    end
  end.size
end

def day8p2(displays)
  displays.map { |d| Display.new(d).result }.sum
end

input = File.read('day8/input.txt').split("\n")
p day8p1(input)
p day8p2(input)
