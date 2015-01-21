require 'spec_helper'
require 'problem_two'
require 'fibonacci'

module ProjectEuler
  describe ProblemTwo do
    it "can return the sum of the even terms in the Fibonacci sequence under 3" do
      expect(ProblemTwo.sum_of_even_terms(3)).to eq 2
    end

    it "can return the sum of the even terms in the Fibonacci sequence under 9" do
      expect(ProblemTwo.sum_of_even_terms(9)).to eq 10
    end

    it "can return the sum of the even terms in the Fibonacci sequence under 90" do
      expect(ProblemTwo.sum_of_even_terms(90)).to eq 44
    end

    it "can return the sum of the even terms in the Fibonacci sequence under 90" do
      expect(ProblemTwo.sum_of_even_terms(4000000)).to eq 4613732
    end
  end
end