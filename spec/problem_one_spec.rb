require 'spec_helper'
require 'problem_one'

module ProjectEuler
  describe ProblemOne do
    it "can return the sum of natural numbers below 3 that are multiples of 3 and 5" do
      expect(ProblemOne.sum_of_multiples(3)).to eq 0
    end

    it "can return the sum of natural numbers below 5 that are multiples of 3 and 5" do
      expect(ProblemOne.sum_of_multiples(5)).to eq 3
    end

    it "can return the sum of natural numbers below 6 that are multiples of 3 and 5" do
      expect(ProblemOne.sum_of_multiples(6)).to eq 8
    end

    it "can return the sum of natural numbers below 10 that are multiples of 3 and 5" do
      expect(ProblemOne.sum_of_multiples(10)).to eq 23
    end

    it "can return the sum of natural numbers below 10 that are multiples of 3 and 5" do
      expect(ProblemOne.sum_of_multiples(1000)).to eq 233168
    end

  end
end