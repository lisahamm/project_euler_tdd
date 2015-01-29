require 'spec_helper'
require 'problem_twelve'

module ProjectEuler
  describe ProblemTwelve do
    include ProblemTwelve

    it "returns the divisors of 1" do
      expect(number_of_divisors(1)).to eq 1
    end

    it "returns the divisors of 2" do
      expect(number_of_divisors(2)).to eq 2
    end

    it "returns the divisors of 28" do
      expect(number_of_divisors(28)).to eq 6
    end

    it "returns the first triangular number to have over 1 divisor" do
      expect(triangular_number_with_over_n_divisors(1)).to eq 3
    end

    it "returns the first triangular number to have over 2 divisors" do
      expect(triangular_number_with_over_n_divisors(2)).to eq 6
    end

    it "returns the first triangular number to have over 5 divisors" do
      expect(triangular_number_with_over_n_divisors(5)).to eq 28
    end

    it "returns the first triangular number to have over 50 divisors" do
      expect(triangular_number_with_over_n_divisors(50)).to eq 25200
    end

    it "returns the first triangular number to have over 100 divisors" do
      expect(triangular_number_with_over_n_divisors(100)).to eq 73920
    end

    it "returns the first triangular number to have over 200 divisors" do
      expect(triangular_number_with_over_n_divisors(200)).to eq 2031120
    end

    it "returns the first triangular number to have over 500 divisors" do
      expect(triangular_number_with_over_n_divisors(500)).to eq 76576500
    end
  end
end