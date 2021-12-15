require_relative 'day15'

RSpec.describe 'Day 15' do
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
end
