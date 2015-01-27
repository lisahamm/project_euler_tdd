require 'spec_helper'
require 'problem_fourteen'

module ProjectEuler
  describe ProblemFourteen do
    it "returns the next term in the Collatz sequence when given an even term" do
      expect(ProblemFourteen.next_collatz_term(2)).to eq 1
    end

    it "returns the next term in the Collatz sequence when given an odd term" do
      expect(ProblemFourteen.next_collatz_term(3)).to eq 10
    end

    it "returns the Collatz sequence for a given number" do
      expect(ProblemFourteen.collatz_sequence(1)).to eq [1]
    end

    it "returns the Collatz sequence for a given number" do
      expect(ProblemFourteen.collatz_sequence(2)).to eq [2, 1]
    end

    it "returns the Collatz sequence for a given number" do
      expect(ProblemFourteen.collatz_sequence(13)).to eq [13,40,20,10,5,16,8,4,2,1]
    end


  end
end