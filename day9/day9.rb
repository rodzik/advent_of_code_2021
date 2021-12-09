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

input = File.read('day9/input.txt')
p day9p1(input)
