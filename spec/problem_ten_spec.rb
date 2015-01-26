require 'spec_helper'
require 'problem_ten'

module ProjectEuler
  describe ProblemTen do
    include ProblemTen

    it "returns 2 as the sum of prime numbers under 3" do
      expect(sum_of_primes_up_to(3)).to eq 2
    end

    it "returns 2 as the sum of prime numbers under 4" do
      expect(sum_of_primes_up_to(4)).to eq 5
    end

    it "returns 2 as the sum of prime numbers under 10" do
      expect(sum_of_primes_up_to(10)).to eq 17
    end

    it "returns 2 as the sum of prime numbers under 1000" do
      expect(sum_of_primes_up_to(1000)).to eq 76127
    end

    it "returns 2 as the sum of prime numbers under 10000" do
      sum = 0
      prime_numbers(options(10000)) {|n| sum += n}
      expect(sum).to eq 5736396
    end

    it "returns 2 as the sum of prime numbers under 2000000", :speed => 'slow' do
      sum = 0
      prime_numbers(options(200000)) {|n| sum += n}
      expect(sum).to eq 1709600813
    end

    it "returns 2 as the sum of prime numbers under 2000000" do
      sum = 0
      prime_numbers(options(2000000)) {|n| sum += n}
      expect(sum).to eq 1709600813
    end

  end
end