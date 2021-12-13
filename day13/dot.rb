# frozen_string_literal: true

class Dot
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def map_fold(fold)
    fold.direction == :x ? map_x(fold.value) : map_y(fold.value)
  end

  def coordinates
    [x, y]
  end

  private

  def map_x(v)
    diff = x - v
    @x = v - diff
  end

  def map_y(v)
    diff = y - v
    @y = v - diff
  end
end
