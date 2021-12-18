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

RSpec.describe PriorityQueue do
  it 'properly implements priority' do
    q = PriorityQueue.new
    q << ['middle', 4]
    q << ['high', 9]
    q << ['low', 1]
    expect(q.pop).to eq('low')
    expect(q.pop).to eq('middle')
    expect(q.pop).to eq('high')
    expect(q.pop).to eq(nil)
  end
end
