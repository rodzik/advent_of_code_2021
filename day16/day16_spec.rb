require_relative 'day16'

RSpec.describe 'Day 16' do
  describe '#sum_versions' do
    it 'sums versions' do
      input = 'D2FE28'
      expect(day16(input)[:versions]).to eq(6)
    end

    it 'sums versions' do
      input = '38006F45291200'
      expect(day16(input)[:versions]).to eq(9)
    end

    it 'sums versions' do
      input = 'EE00D40C823060'
      expect(day16(input)[:versions]).to eq(14)
    end

    it 'sums versions' do
      input = '8A004A801A8002F478'
      expect(day16(input)[:versions]).to eq(16)
    end

    it 'sums versions' do
      input = '620080001611562C8802118E34'
      expect(day16(input)[:versions]).to eq(12)
    end

    it 'sums versions' do
      input = 'C0015000016115A2E0802F182340'
      expect(day16(input)[:versions]).to eq(23)
    end

    it 'sums versions' do
      input = 'A0016C880162017C3686B18A3D4780'
      expect(day16(input)[:versions]).to eq(31)
    end
  end

  describe '#sum_values' do
    it 'calculates values' do
      input = 'C200B40A82'
      expect(day16(input)[:values]).to eq(3)
    end

    it 'calculates values' do
      input = '04005AC33890'
      expect(day16(input)[:values]).to eq(54)
    end

    it 'calculates values' do
      input = '880086C3E88112'
      expect(day16(input)[:values]).to eq(7)
    end

    it 'calculates values' do
      input = 'CE00C43D881120'
      expect(day16(input)[:values]).to eq(9)
    end

    it 'calculates values' do
      input = 'D8005AC2A8F0'
      expect(day16(input)[:values]).to eq(1)
    end

    it 'calculates values' do
      input = 'F600BC2D8F'
      expect(day16(input)[:values]).to eq(0)
    end

    it 'calculates values' do
      input = '9C0141080250320F1802104A08'
      expect(day16(input)[:values]).to eq(1)
    end
  end
end
