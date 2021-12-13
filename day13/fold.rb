# frozen_string_literal: true

class Fold
  attr_reader :direction, :value

  def self.for(instruction)
    dir, v = instruction.gsub('fold along ', '').split('=')
    new(dir, v.to_i)
  end

  def initialize(direction, value)
    @direction = direction.to_sym
    @value = value
  end
end
