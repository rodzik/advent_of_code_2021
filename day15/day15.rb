require 'pry'

class PriorityQueue
  attr_reader :q

  def initialize
    @q = []
  end

  def <<(e)
    i = 0
    @q.each do |x|
      break if x[1] > e[1]
      i += 1
    end
    @q.insert(i, e)
  end

  def pop
    e = @q.shift
    e.nil? ? e : e[0]
  end
end

def dijkstra(input, start = [0, 0])
  map = input.split("\n").map { |line| line.chars.map(&:to_i) }
  max_i = map.length - 1
  finish = [max_i, max_i]

  costs = Hash.new(Float::INFINITY)
  current = start
  costs[current] = 0
  parents = {}
  visited = []
  q = PriorityQueue.new

  while !current.nil?
    adjacent_nodes(current, max_i).each do |n|
      new_cost = costs[current] + map[n[0]][n[1]]
      next unless new_cost < costs[n]
      costs[n] = new_cost
      parents[n] = current
      q << [n, new_cost]
    end

    visited << current
    current = q.pop
  end

  costs[finish]
end

def adjacent_nodes(current, max_size)
  y = current[0]
  x = current[1]
  nodes = []
  nodes << [y - 1, x] if y > 0
  nodes << [y, x - 1] if x > 0
  nodes << [y, x + 1] if x < max_size
  nodes << [y + 1, x] if y < max_size
  nodes
end

input = File.read('day15/input.txt')
p dijkstra(input)
