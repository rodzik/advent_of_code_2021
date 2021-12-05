class Line
  def self.hv_lines_for(coordinates)
    x1, y1, x2, y2 = coordinates.gsub(" -> ", ",").split(",").map(&:to_i)
    return Horizontal.new(x1, y1, x2, y2) if y1 == y2
    return Vertical.new(x1, y1, x2, y2) if x1 == x2
    Null.new
  end

  def initialize(x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  private

  def range(a, b)
    a < b ? (a..b) : (b..a)
  end

  class Horizontal < Line
    def points
      range(@x1, @x2).map { |x| [x, @y1] }
    end
  end

  class Vertical < Line
    def points
      range(@y1, @y2).map { |y| [@x1, y] }
    end
  end

  class Null
    def points
      []
    end
  end
end
