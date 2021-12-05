RSpec.describe Line do
  describe ".hv_lines_for" do
    context "with horizontal coordinates" do
      it "returns horizontal line" do
        coordinates = "0,9 -> 5,9"
        line = described_class.hv_lines_for(coordinates)
        expect(line.points).to match_array(
          [
            [0, 9],
            [1, 9],
            [2, 9],
            [3, 9],
            [4, 9],
            [5, 9]
          ]
        )
      end
    end

    context "with vertical coordinates" do
      it "returns vertical line" do
        coordinates = "7,0 -> 7,4"
        line = described_class.hv_lines_for(coordinates)
        expect(line.points).to match_array(
          [
            [7, 0],
            [7, 1],
            [7, 2],
            [7, 3],
            [7, 4]
          ]
        )
      end
    end

    context "with other coordinates" do
      it "returns null line" do
        coordinates = "1,2 -> 3,4"
        line = described_class.hv_lines_for(coordinates)
        expect(line.points).to eq([])
      end
    end
  end
end
