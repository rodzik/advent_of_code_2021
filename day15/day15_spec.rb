require_relative 'day15'

RSpec.describe 'Day 15' do
  describe 'dijkstra' do
    it 'returns shortes path distance' do
      map = "1163751742\n" \
            "1381373672\n" \
            "2136511328\n" \
            "3694931569\n" \
            "7463417111\n" \
            "1319128137\n" \
            "1359912421\n" \
            "3125421639\n" \
            "1293138521\n" \
            "2311944581\n" \

      expect(dijkstra(map)).to eq(40)
    end

    it 'returns shortes path for part 2' do
      map = "1163751742\n" \
            "1381373672\n" \
            "2136511328\n" \
            "3694931569\n" \
            "7463417111\n" \
            "1319128137\n" \
            "1359912421\n" \
            "3125421639\n" \
            "1293138521\n" \
            "2311944581\n" \

      expect(part2(map)).to eq(315)
    end
  end

  describe 'map cave' do
    it 'expands cave' do
      input = "8\n"
      expected = "89123\n" \
                "91234\n" \
                "12345\n" \
                "23456\n" \
                "34567"
      expect(map_cave(input)).to eq(expected)
    end
  end
end

