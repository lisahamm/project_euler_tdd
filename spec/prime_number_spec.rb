require 'spec_helper'
require 'prime_number'

module ProjectEuler
  describe PrimeNumber do
    it "returns true if a given number is prime" do
      expect(PrimeNumber.prime?(2)).to eq true
    end

    it "returns all prime numbers up to a given number" do
      result = []
      PrimeNumber.prime_numbers_up_to(13) {|n| result << n}
      expect(result).to eq [2, 3, 5, 7, 11, 13]
    end

    it "returns all prime numbers up to the nth term" do
      result = []
      PrimeNumber.prime_numbers_up_to_nth_term(6) {|n| result << n}
      expect(result).to eq [2, 3, 5, 7, 11, 13]
    end

  end
end