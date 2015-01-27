require 'spec_helper'
require 'problem_four'

module ProjectEuler
  describe ProblemFour do
    it "returns true if a number is a palindrome" do
      expect(ProblemFour.palindrome?(1)).to eq true
    end

    it "returns false if a number is not a palindrome" do
      expect(ProblemFour.palindrome?(12)).to eq false
    end

    it "returns an array with all possible numbers of a specified number of digits" do
      expect(ProblemFour.all_numbers_with_same_number_of_digits(0)).to eq []
    end

    it "returns an array with all possible numbers of a specified number of digits" do
      expect(ProblemFour.all_numbers_with_same_number_of_digits(1)).to eq [1,2,3,4,5,6,7,8,9]
    end

    it "returns 10 as the first value in an array with all possible 2 digit numbers" do
      number_array = ProblemFour.all_numbers_with_same_number_of_digits(2)
      expect(number_array.first).to eq 10
    end

    it "returns 99 as the last value in an array with all possible 2 digit numbers" do
      number_array = ProblemFour.all_numbers_with_same_number_of_digits(2)
      expect(number_array.last).to eq 99
    end

    it "returns all multiplier combinations of given numbers that result in a palindromic product" do
      expect(ProblemFour.palindromic_multipliers([])).to eq []
    end

    it "returns all multiplier combinations of given numbers that result in a palindromic product" do
      number_options = ProblemFour.palindromic_multipliers([1,2,3,4,5,6,7,8,9])
      expect(number_options.first).to eq [1,2]
    end

    it "returns the products of palindromic multipliers" do
      multiplier_combinations = ProblemFour.palindromic_multipliers([1,2,3,4,5,6,7,8,9])
      products = ProblemFour.palindromic_products(multiplier_combinations)
      expect(products.first).to eq 2
    end

    it "returns the largest number from a list of palindromic numbers" do
      expect(ProblemFour.largest_number([1,2,3,4,5,6,7,8,9])).to eq 9
    end

    it "returns the largest palindrome product of multipliers with 1 digit" do
      expect(ProblemFour.largest_palindrome(1)).to eq 9
    end

    it "returns the largest palindrome product of multipliers with 2 digits" do
      expect(ProblemFour.largest_palindrome(2)).to eq 9009
    end

    it "returns the largest palindrome product of multipliers of 3 digit" do
      expect(ProblemFour.largest_palindrome(3)).to eq 906609
    end
  end
end