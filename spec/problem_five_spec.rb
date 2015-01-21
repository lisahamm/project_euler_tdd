require 'spec_helper'
require 'problem_five'

module ProjectEuler
  describe ProblemFive do
    it "returns the smallest number divisible by all numbers given as parameters" do
      expect(ProblemFive.smallest_divisible_number(1)).to eq 1
    end

    it "returns the smallest number divisible by all numbers given as parameters" do
      expect(ProblemFive.smallest_divisible_number(1,2)).to eq 2
    end

    it "returns the smallest number divisible by all numbers given as parameters" do
      expect(ProblemFive.smallest_divisible_number(1,2,3)).to eq 6
    end

    it "returns the smallest number divisible by all numbers given as parameters" do
      expect(ProblemFive.smallest_divisible_number(1,2,3,4,5,6,7,8,9,10)).to eq 2520
    end

    it "returns the smallest number divisible by all numbers given as parameters", :speed => 'slow' do
      expect(ProblemFive.smallest_divisible_number(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)).to eq 232792560
    end
  end
end