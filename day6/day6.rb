class Lanternfish
  include Comparable

  attr_reader :days_till_offspring

  def initialize(days_till_offspring = 8)
    @days_till_offspring = days_till_offspring
  end

  def tick
    if days_till_offspring > 0
      @days_till_offspring -= 1
      [self]
    else
      @days_till_offspring = 6
      [self, Lanternfish.new]
    end
  end

  def <=>(other)
    days_till_offspring <=> other.days_till_offspring
  end
end

def day6p1(input, days)
  fish = input.split(',').map { |f| Lanternfish.new(f.to_i) }
  days.times { fish.map!(&:tick).flatten! }
  fish.count
end

input = File.read('day6/input.txt')
p day6p1(input, 80)
