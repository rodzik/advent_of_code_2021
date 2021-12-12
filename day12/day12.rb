require 'pry'

def day12p1(input)
  nodes = build_nodes(input)
  results = []
  queue = [['start']]

  # breadth first search
  while queue.any?
    path = queue.shift

    if path[-1] == 'end'
      results << path
    else
      (nodes[path[-1]] || []).each do |child_node|
        next if path.include?(child_node) && child_node.upcase != child_node
        queue << path + [child_node]
      end
    end
  end

  results.size
end

def build_nodes(input)
  input.reduce({}) do |hash, s|
    k, v = s.split("-")
    (hash[k] ||= []) << v
    (hash[v] ||= []) << k unless v == 'end' || k == 'start'
    hash
  end
end

def day12p2(input)
  nodes = build_nodes(input)
  results = []

  small_caves = nodes.keys.concat(nodes.values).flatten.uniq.reject { |e| e == 'end' || e == 'start' || e.upcase == e }
  small_caves.each do |single_visit_cave|
    queue = [['start']]
    while queue.any?
      path = queue.shift
      if path[-1] == 'end'
        results << path
      else
        (nodes[path[-1]] || []).each do |child_node|
          next if condition(path, child_node, single_visit_cave)
          queue << path + [child_node]
        end
      end
    end
  end

  results.uniq.size
end

def condition(path, child_node, single_visit_cave = nil)
  if child_node != single_visit_cave
    path.include?(child_node) && child_node.upcase != child_node
  else
    path.count(single_visit_cave) > 1
  end
end

input = File.read('day12/input.txt').split("\n")
p day12p1(input)
p day12p2(input)

