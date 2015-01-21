require 'spec_helper'
require 'problem_eight'

module ProjectEuler
  describe ProblemEight do
    it "returns the first digit of a given number" do
      expect(ProblemEight.adjacent_number_sequence(1,1)).to eq 1
    end

    it "returns the first digit of a given number" do
      expect(ProblemEight.adjacent_number_sequence(2,1)).to eq 2
    end

    it "returns the first 2 digits of a given number" do
      expect(ProblemEight.adjacent_number_sequence(222,2)).to eq 22
    end

    it "returns all sequences of a specified digit length of a given number" do
      expect(ProblemEight.adjacent_number_sequences(1,1)). to eq 1
    end

    it "returns all sequences of a specified digit length of a given number" do
      expect(ProblemEight.adjacent_number_sequences(123456,2)). to eq [12, 23, 34, 45]
    end
  end
end