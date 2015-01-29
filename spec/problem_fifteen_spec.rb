require 'spec_helper'
require 'problem_fifteen'

module ProjectEuler
  describe ProblemFifteen do
    it "returns the number of moves needed to reach the bottom right corner of a grid" do
      expect(ProblemFifteen.required_number_of_moves(1,1)).to eq 2
    end

    it "returns the number of moves needed to reach the bottom right corner of a grid" do
      expect(ProblemFifteen.required_number_of_moves(2,2)).to eq 4
    end

    it "returns the maximum number of right moves" do
      expect(ProblemFifteen.max_num_of_right_moves(1)).to eq 1
    end

    it "returns the maximum number of downward moves" do
      expect(ProblemFifteen.max_num_of_down_moves(1)).to eq 1
    end
  end
end