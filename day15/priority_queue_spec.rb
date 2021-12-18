require_relative 'priority_queue'

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
