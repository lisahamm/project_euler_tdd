require 'spec_helper'
require 'problem_fifteen'

module ProjectEuler
  describe ProblemFifteen do
    it "returns 1 for the factorial of 1" do
      expect(ProblemFifteen.factorial_of(1)).to eq 1
    end

    it "returns 2 for the factorial of 2" do
      expect(ProblemFifteen.factorial_of(2)).to eq 2
    end

    it "returns 6 for the factorial of 3" do
      expect(ProblemFifteen.factorial_of(3)).to eq 6
    end

    it "returns 2 as the total number of possible routes for a 1 x 1 grid" do
      expect(ProblemFifteen.number_of_possible_routes(1,1)).to eq 2
    end

    it "returns 6 as the total number of possible routes for a 2 x 2 grid" do
      expect(ProblemFifteen.number_of_possible_routes(2,2)).to eq 6
    end

    it "returns 20 as the total number of possible routes for a 3 x 3 grid" do
      expect(ProblemFifteen.number_of_possible_routes(3,3)).to eq 20
    end

    it "returns 137846528820 as the total number of possible routes for a 20 x 20 grid" do
      expect(ProblemFifteen.number_of_possible_routes(20,20)).to eq 137846528820
    end

  end
end