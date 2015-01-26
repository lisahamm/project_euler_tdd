require 'spec_helper'
require 'problem_eleven'

module ProjectEuler
  describe ProblemEleven do
    it "returns all combinations of 4 adjacent items in the left direction in a 2 dimensional array" do
      expect(ProblemEleven.adjacent_items_left([[1]])).to eq [1]
    end
  end
end