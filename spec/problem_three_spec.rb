require 'spec_helper'
require 'problem_three'

module ProjectEuler
  describe ProblemThree do
    it "will return the largest prime factor of 1" do
      expect(ProblemThree.largest_prime_factor(1)).to eq 1
    end

    it "will return the largest prime factor of 2" do
      expect(ProblemThree.largest_prime_factor(2)).to eq 2
    end

    it "will return the largest prime factor of 4" do
      expect(ProblemThree.largest_prime_factor(4)).to eq 2
    end

    it "will return the largest prime factor of 6" do
      expect(ProblemThree.largest_prime_factor(6)).to eq 3
    end

    it "will return the largest prime factor of 8" do
      expect(ProblemThree.largest_prime_factor(8)).to eq 2
    end

    it "will return the largest prime factor of 13195" do
      expect(ProblemThree.largest_prime_factor(13195)).to eq 29
    end

    it "will return the largest prime factor of 600851475143" do
      expect(ProblemThree.largest_prime_factor(600851475143)).to eq 6857
    end
  end
end