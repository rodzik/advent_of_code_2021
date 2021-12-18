require 'pry'
require_relative 'priority_queue'

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

def part2(input)
  cave = map_cave(input)
  dijkstra(cave)
end

def map_cave(input)
  map = input.split("\n").map { |line| line.chars.map(&:to_i) }
  map.map! do |line|
    expanded = [line]
    4.times { |i| expanded << line.map { |e| ((e + i) % 9) + 1 } }
    expanded.flatten
  end

  expanded = map.dup
  4.times do |i|
    map.each do |row|
      expanded << row.map { |e| ((e + i) % 9) + 1 }
    end
  end
  expanded.map { |l| l.join }.join("\n")
end

input = File.read('day15/input.txt')
p dijkstra(input)
p part2(input)
