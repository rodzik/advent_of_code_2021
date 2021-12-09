def day9p1(input)
  rows = input.split("\n").map { |s| s.chars.map(&:to_i) }
  low_points = []
  rows.each_with_index do |row, y|
    row.each_with_index do |el, x|
      next if row[x + 1] && row[x + 1] <= el
      next if x - 1 >= 0 && row[x - 1] && row[x - 1] <= el
      next if rows[y + 1] && rows[y + 1][x] <= el
      next if y - 1 >= 0 && rows[y - 1] && rows[y - 1][x] <= el

      low_points << el + 1
    end
  end

  low_points.sum
end

def day9p2(input)
  rows = input.split("\n").map(&:chars)
  basins = []

  rows.each_with_index do |row, y|
    row.each_with_index do |el, x|
      next if el == '9' || el == 'x'

      basins << find(rows, x, y)
    end
  end

  basins.max(3).reduce(:*)
end

def find(rows, x, y)
  return 0 if x < 0 || y < 0 || rows[y].nil? || rows[y][x].nil?
  return 0 if rows[y][x] == 'x' || rows[y][x] == '9'

  rows[y][x] = 'x'
  1 + find(rows, x - 1, y) + find(rows, x, y - 1) + find(rows, x + 1, y) + find(rows, x, y + 1)
end

input = File.read('day9/input.txt')
p day9p1(input)
p day9p2(input)
