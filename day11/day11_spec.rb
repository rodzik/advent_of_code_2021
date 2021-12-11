require_relative 'day11'

RSpec.describe 'Day 11' do
  let(:input) do
    [
      "5483143223",
      "2745854711",
      "5264556173",
      "6141336146",
      "6357385478",
      "4167524645",
      "2176841721",
      "6882881134",
      "4846848554",
      "5283751526"
    ]
  end

  it "counts flashes" do
    expect(day11p1(input, 100)).to eq(1656)
  end

  it "founds big flash" do
    expect(day11p2(input)).to eq(195)
  end
end
