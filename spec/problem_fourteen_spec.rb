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

    it "returns the number in a given range with the longest chain" do
      expect(ProblemFourteen.longest_collatz_sequence((1..1))).to eq 1
    end

    it "returns the number in a given range with the longest chain" do
      expect(ProblemFourteen.longest_collatz_sequence((1..2))).to eq 2
    end

    it "returns the number in a given range with the longest chain" do
      expect(ProblemFourteen.longest_collatz_sequence((1..4))).to eq 3
    end

    it "returns the number in a given range with the longest chain" do
      expect(ProblemFourteen.longest_collatz_sequence((1..13))).to eq 9
    end

    it "returns the number in a given range with the longest chain" do
      expect(ProblemFourteen.longest_collatz_sequence((1..100))).to eq 97
    end

    it "returns the number in a given range with the longest chain" do
      expect(ProblemFourteen.longest_collatz_sequence((1..1000))).to eq 871
    end

    it "returns the number in a given range with the longest chain" do
      expect(ProblemFourteen.longest_collatz_sequence((1..10000))).to eq 6171
    end

    it "returns the number under 1000000 with the longest collatz sequence", :speed => 'slow' do
      expect(ProblemFourteen.longest_collatz_sequence((1..1000000))).to eq 837799
    end
  end
end