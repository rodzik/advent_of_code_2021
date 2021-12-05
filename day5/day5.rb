require_relative 'plane'

def day5(input)
  Plane.new(input).count_points
end

input = File.read('day5/input.txt')
p day5(input)
