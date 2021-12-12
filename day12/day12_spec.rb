require_relative 'day12'

RSpec.describe 'Day 12' do
  context 'with small input' do
    let(:input) do
      [
        "start-A",
        "start-b",
        "A-c",
        "A-b",
        "b-d",
        "A-end",
        "b-end"
      ]
    end

    it "counts possible paths" do
      expect(day12p1(input)).to eq(10)
    end

    it "allows two small cave visits" do
      expect(day12p2(input)).to eq(36)
    end
  end

  context 'with slightly larger input' do
    let(:input) do
      [
        "dc-end",
        "HN-start",
        "start-kj",
        "dc-start",
        "dc-HN",
        "LN-dc",
        "HN-end",
        "kj-sa",
        "kj-HN",
        "kj-dc"
      ]
    end

    it "counts possible paths" do
      expect(day12p1(input)).to eq(19)
    end

    it "allows two small cave visits" do
      expect(day12p2(input)).to eq(103)
    end
  end

  context 'with large input' do
    let(:input) do
      [
        "fs-end",
        "he-DX",
        "fs-he",
        "start-DX",
        "pj-DX",
        "end-zg",
        "zg-sl",
        "zg-pj",
        "pj-he",
        "RW-he",
        "fs-DX",
        "pj-RW",
        "zg-RW",
        "start-pj",
        "he-WI",
        "zg-he",
        "pj-fs",
        "start-RW"
      ]
    end

    it "counts possible paths" do
      expect(day12p1(input)).to eq(226)
    end

    it "allows two small cave visits" do
      expect(day12p2(input)).to eq(3509)
    end
  end
end
