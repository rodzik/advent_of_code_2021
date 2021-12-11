require 'pry'

class Collection
  def initialize(input, days = 100)
    @grid = []
    input.each_with_index do |row, y|
      row.chars.each_with_index { |el, x| @grid << Octopus.new(el.to_i, y, x) }
    end
    @days = days
  end

  def countdown
    while @days > 0
      increase_all
      @days -= 1
    end

    @grid.sum(&:flashes)
  end

  def find_big_flash
    i = 0
    while true
      increase_all
      i += 1
      break if @grid.all? { |o| o.value.zero? }
    end

    i
  end

  private

  def increase_all
    remain = []

    @grid.each do |o|
      remain <<  o.adjacent.map { |c| @grid.find { |e| e.coordinates == c } } if o.increase
    end

    while remain.any?
      remain.flatten!
      o = remain.shift
      remain <<  o.adjacent.map { |c| @grid.find { |e| e.coordinates == c } } if o.increase
    end

    @grid.each(&:clear)
  end
end

class Octopus
  attr_reader :row, :col, :value, :flashes

  def initialize(value, row, col)
    @value, @col, @row = value, col, row
    @flashes = 0
    @flashed = false
  end

  def adjacent
    adjacent = []
    if row > 0
      adjacent << [row - 1, col - 1] if col > 0
      adjacent << [row - 1, col]
      adjacent << [row - 1, col + 1] if col < 9
    end

    adjacent << [row, col - 1] if col > 0
    adjacent << [row, col + 1] if col < 9

    if row < 9
      adjacent << [row + 1, col - 1] if col > 0
      adjacent << [row + 1, col]
      adjacent << [row + 1, col + 1] if col < 9
    end

    adjacent
  end

  def increase
    return false if @flashed

    @value += 1
    @value > 9 ? flash : false
  end

  def coordinates
    [row, col]
  end

  def flashed?
    @flashed
  end

  def clear
    if @flashed
      @flashed = false
      @value = 0
    end
  end

  private

  def flash
    @flashes += 1
    @flashed = true
  end
end


def day11p1(input, days)
  collection = Collection.new(input, days)
  collection.countdown
end


def day11p2(input)
  collection = Collection.new(input)
  collection.find_big_flash
end

input = File.read('day11/input.txt').split("\n")
p day11p1(input, 100)
p day11p2(input)
