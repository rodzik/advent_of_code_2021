require_relative 'line'

class Plane
  def initialize(input)
    @lines = input.split("\n").map { |c| Line.hv_lines_for(c.strip) }
  end

  def count_points
    points = Hash.new(0)

    @lines.each do |line|
      line.points.each { |p| points[p] += 1 }
    end

    points.map { |k, v| v > 1 ? 1 : 0 }.sum
  end
end
