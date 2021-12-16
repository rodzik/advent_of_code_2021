require_relative 'day16'

RSpec.describe 'Day 16' do
  it 'sums versions' do
    input = 'D2FE28'
    expect(sum(input)).to eq(6)
  end

  it 'sums versions' do
    input = '38006F45291200'
    expect(sum(input)).to eq(9)
  end

  it 'sums versions' do
    input = 'EE00D40C823060'
    expect(sum(input)).to eq(14)
  end

  it 'sums versions' do
    input = '8A004A801A8002F478'
    expect(sum(input)).to eq(16)
  end

  it 'sums versions' do
    input = '620080001611562C8802118E34'
    expect(sum(input)).to eq(12)
  end

  it 'sums versions' do
    input = 'C0015000016115A2E0802F182340'
    expect(sum(input)).to eq(23)
  end

  it 'sums versions' do
    input = 'A0016C880162017C3686B18A3D4780'
    expect(sum(input)).to eq(31)
  end
end


