require 'spec_helper'
require 'problem_seven'


module ProjectEuler
  describe ProblemSeven do
    include ProblemSeven
    it "returns the nth prime number" do
      expect(nth_prime_number(1)).to eq 2
    end

    it "returns the nth prime number" do
      expect(nth_prime_number(2)).to eq 3
    end

    it "returns the nth prime number" do
      expect(nth_prime_number(6)).to eq 13
    end

    it "returns the nth prime number", :speed => 'slow' do
      expect(nth_prime_number(10001)).to eq 104743
    end
  end
end