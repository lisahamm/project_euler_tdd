require 'spec_helper'
require 'problem_eleven'

module ProjectEuler
  describe ProblemEleven do
    it "returns all combinations of 4 adjacent items in the left direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_left([[1,2,3,4]])).to eq [[1,2,3,4]]
    end

    it "returns all combinations of 4 adjacent items in the left direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_left([[1,2,3,4],[5,6,7,8]])).to eq [[1,2,3,4],[5,6,7,8]]
    end
  end
end