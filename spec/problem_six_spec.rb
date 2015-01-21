require 'spec_helper'
require 'problem_six'

module ProjectEuler
  describe ProblemSix do
    it "returns the sum of the squares of the numbers in a given range" do
      expect(ProblemSix.sum_of_squares(1..1)).to eq 1
    end

    it "returns the sum of the squares of the numbers in a given range" do
      expect(ProblemSix.sum_of_squares(1..2)).to eq 5
    end

    it "returns the sum of the squares of the numbers in a given range" do
      expect(ProblemSix.sum_of_squares(1..10)).to eq 385
    end

    it "returns the square of the sum of numbers in a given range" do
      expect(ProblemSix.square_of_sum(1..1)).to eq 1
    end

    it "returns the square of the sum of numbers in a given range" do
      expect(ProblemSix.square_of_sum(1..2)).to eq 9
    end

    it "returns the square of the sum of numbers in a given range" do
      expect(ProblemSix.square_of_sum(1..10)).to eq 3025
    end

    it "returns the difference between the sum of squares and the square of the sum of a range of numbers" do
      expect(ProblemSix.square_of_sum_minus_sum_of_squares(1..1)).to eq 0
    end
  end
end