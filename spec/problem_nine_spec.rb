require 'spec_helper'
require 'problem_nine'

module ProjectEuler
  describe ProblemNine do
    describe "#pythagorean_triplet?" do
      context "when not valid" do
        it "returns false" do
          expect(ProblemNine.pythagorean_triplet?(0,0,0)).to eq false
        end

        it "returns true if a, b, and c are a Pythagorean Triplet" do
          expect(ProblemNine.pythagorean_triplet?(1,1,1)).to eq false
        end

        it "returns true if a, b, and c are a Pythagorean Triplet" do
          expect(ProblemNine.pythagorean_triplet?(1,2,4)).to eq false
        end
      end

      context "when valid" do
        it "returns true if a, b, and c are a Pythagorean Triplet" do
          expect(ProblemNine.pythagorean_triplet?(3,4,5)).to eq true
        end

        it "returns true if a, b, and c are a Pythagorean Triplet" do
          expect(ProblemNine.pythagorean_triplet?(5,12,13)).to eq true
        end
      end

      describe "#sum" do
        it "returns the sum of numbers" do
          expect(ProblemNine.sum(3, 4, 5)).to eq 12
        end
      end

      describe "#product" do
        it "returns the product of numbers" do
          expect(ProblemNine.product(3, 4, 5)).to eq 60
        end
      end

      describe "#pythagorean_triplets_with_sum(n)" do
        it "returns a pythagorean triplet with a specified sum" do
          expect(ProblemNine.pythagorean_triplet_with_sum(12)).to eq [3, 4, 5]
        end

        it "returns a pythagorean triplet with a specified sum", :speed => 'slow' do
          expect(ProblemNine.pythagorean_triplet_with_sum(1000)).to eq [200, 375, 425]
        end
      end

      context "product of pythagorean triplet with a sum of 1000" do
        it "returns the product of a, b, and c" do
          expect(ProblemNine.product(200, 375, 425)).to eq 31875000
        end
      end
    end
  end
end