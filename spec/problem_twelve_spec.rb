require 'spec_helper'
require 'problem_twelve'

module ProjectEuler
  describe ProblemTwelve do
    it "returns the first triangular number" do
      expect(ProblemTwelve.nth_triangular_number(1)).to eq 1
    end
  end
end