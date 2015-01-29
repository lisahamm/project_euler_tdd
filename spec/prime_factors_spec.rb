require 'spec_helper'
require 'prime_factors'

module ProjectEuler
  describe PrimeFactors do
    include PrimeFactors

    it "should factor 1" do
      expect(prime_factors_of(1)).to eq []
    end

    it "should factor 2" do
      expect(prime_factors_of(2)).to eq [2]
    end

    it "should factor 3" do
      expect(prime_factors_of(3)).to eq [3]
    end

    it "should factor 4" do
      expect(prime_factors_of(4)).to eq [2,2]
    end

    it "should factor 5" do
      expect(prime_factors_of(5)).to eq [5]
    end

    it "should factor 6" do
      expect(prime_factors_of(6)).to eq [2,3]
    end

    it "should factor 7" do
      expect(prime_factors_of(7)).to eq [7]
    end

    it "should factor 8" do
      expect(prime_factors_of(8)).to eq [2,2,2]
    end

    it "should factor 9" do
      expect(prime_factors_of(9)).to eq [3,3]
    end

    it "should factor 36" do
      expect(prime_factors_of(48)).to eq [2,2,2,2,3]
    end

    it "should return a number's unique prime factors with a count of their occurrences" do
      expect(counts_of_prime_factors(prime_factors_of(2))).to eq [1]
    end

    it "should return a number's unique prime factors with a count of their occurrences" do
      expect(counts_of_prime_factors(prime_factors_of(4))).to eq [2]
    end

    it "should return a number's unique prime factors with a count of their occurrences" do
      expect(counts_of_prime_factors(prime_factors_of(48))).to eq [4,1]
    end

  end
end