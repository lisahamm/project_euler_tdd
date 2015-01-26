require 'spec_helper'
require 'problem_eleven'

module ProjectEuler
  describe ProblemEleven do

    let (:four_by_four_array) {[[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]}
    let (:five_by_five_array) {[[1,2,3,4,5], [6,7,8,9,10], [11,12,13,14,15], [16,17,18,19,20], [21,22,23,24,25]]}

    it "returns all combinations of 4 adjacent items in the left direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_left([[1,2,3,4]])).to eq [[1,2,3,4]]
    end

    it "returns all combinations of 4 adjacent items in the left direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_left([[1,2,3,4],[5,6,7,8]])).to eq [[1,2,3,4],[5,6,7,8]]
    end

    it "returns all combinations of 4 adjacent items in the downwards direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_down([[1,2],[3,4],[5,6],[7,8]])).to eq [[1,3,5,7],[2,4,6,8]]
    end

    it "returns all combinations of 4 adjacent items in the downward diagonal direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_diagonal_down(four_by_four_array)).to eq [[1,6,11,16]]
    end

    it "returns all combinations of 4 adjacent items in the downward diagonal direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_diagonal_down(five_by_five_array)).to eq [[1,7,13,19], [2,8,14,20], [6,12,18,24], [7,13,19,25]]
    end

    it "returns all combinations of 4 adjacent items in the upward diagonal direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_diagonal_up(five_by_five_array)).to eq [[21,17,13,9], [22,18,14,10], [16,12,8,4], [17,13,9,5]]
    end

    it "returns all combinations of 4 adjacent items" do
      combinations = ProblemEleven.adjacent_items_left(four_by_four_array)
      combinations += ProblemEleven.adjacent_items_down(four_by_four_array)
      combinations += ProblemEleven.adjacent_items_diagonal_down(four_by_four_array)
      combinations += ProblemEleven.adjacent_items_diagonal_up(four_by_four_array)
      expect(combinations.length).to eq 10
      expect(combinations.last).to eq [13,10,7,4]
    end

    it "returns the largest product of the combinations of 4 adjacent items" do
      combinations = ProblemEleven.adjacent_items_left(four_by_four_array)
      combinations += ProblemEleven.adjacent_items_down(four_by_four_array)
      combinations += ProblemEleven.adjacent_items_diagonal_down(four_by_four_array)
      combinations += ProblemEleven.adjacent_items_diagonal_up(four_by_four_array)
      expect(ProblemEleven.largest_product(combinations)).to eq 43680
    end

  end
end