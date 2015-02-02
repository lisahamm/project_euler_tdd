require 'spec_helper'
require 'problem_sixteen'

module ProjectEuler
  describe ProblemSixteen do
    it "returns the product of a base raised to a power" do
      expect(ProblemSixteen.base_raised_to_power(1,1)).to eq 1
    end

    it "returns the product of a base raised to a power" do
      expect(ProblemSixteen.base_raised_to_power(2,2)).to eq 4
    end

    it "returns the product of a base raised to a power" do
      expect(ProblemSixteen.base_raised_to_power(1,1)).to eq 1
    end

    it "returns an array of a number's digits" do
      expect(ProblemSixteen.digits_of(1)).to eq [1]
    end

    it "returns an array of a number's digits" do
      expect(ProblemSixteen.digits_of(11)).to eq [1,1]
    end

    it "returns an array of a number's digits" do
      expect(ProblemSixteen.digits_of(1234)).to eq [1,2,3,4]
    end

    it "returns the sum of all digits in an array" do
      expect(ProblemSixteen.sum_of_array([1])).to eq 1
    end

    it "returns the sum of all digits in an array" do
      expect(ProblemSixteen.sum_of_array([1,1])).to eq 2
    end

    it "returns the sum of all digits in an array" do
      expect(ProblemSixteen.sum_of_array([1,1,2,4])).to eq 8
    end

    it "returns the sum of the digits of 2^1000" do
      number = ProblemSixteen.base_raised_to_power(2, 1000)
      expect(ProblemSixteen.sum_of_array(ProblemSixteen.digits_of(number))).to eq 1366
    end
  end
end