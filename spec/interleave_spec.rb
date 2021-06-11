require "interleave"
require "spec_helper"

RSpec.describe "interleave" do

  context "when one of the arrays is empty" do
    it "should return the non empty array" do
      array_1 = %w(a b c d)
      array_2 = []

      expect( interleave(array_1, array_2) ).to eq(array_1)
    end
  end

  context "when arrays have the same size" do
    it "returns a combination of both arrays" do
      array_1 = [1, "a", nil, true]
      array_2 = [1, 3, 4, 5]

      expect{ interleave(array_1, array_2) }.to raise_error ArgumentError
    end
  end

  context "when arrays have different size" do
    it "returns a combination of both arrays" do
      array_1 = %w(a b c d e f g h i)
      array_2 = [1, 3, 4, 5]

      expect(interleave(array_1, array_2)).to eq(["a", "b", 1, "c", "d", 3, "e", "f", 4, "g", "h", 5, "i"])
    end
  end


  context "when b size is greater than a size" do
    it "returns a combination of both arrays" do
      array_1 = %w(a b c d)
      array_2 = [1, 3, 4, 5, 6, 7]

      expect(interleave(array_1, array_2)).to eq([1, "a", 3, "b", 4, "c", 5, "d", 6, 7])
    end
  end
end

# [1, "a", 1, nil, 3, true, 4, 5, 5, 6, 9, 8, nil]