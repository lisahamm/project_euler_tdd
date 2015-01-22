require 'spec_helper'
require 'problem_eight'

module ProjectEuler
  describe ProblemEight do
    it "returns the first digit of a given number" do
      expect(ProblemEight.adjacent_number_sequence(1,1)).to eq 1
    end

    it "returns the first digit of a given number" do
      expect(ProblemEight.adjacent_number_sequence(2,1)).to eq 2
    end

    it "returns the first 2 digits of a given number" do
      expect(ProblemEight.adjacent_number_sequence(222,2)).to eq 22
    end

    it "returns all sequences of a specified digit length of a given number" do
      expect(ProblemEight.adjacent_number_sequences(1,1)). to eq [1]
    end

    it "returns all sequences of a specified digit length of a given number" do
      expect(ProblemEight.adjacent_number_sequences(123456,2)). to eq [12, 23, 34, 45, 56]
    end

    it "returns the product of the digits in a given number" do
      expect(ProblemEight.product_of_adjacent_digits(1)).to eq 1
    end

    it "returns the product of the digits in a given number" do
      expect(ProblemEight.product_of_adjacent_digits(2)).to eq 2
    end

    it "returns the product of the digits in a given number" do
      expect(ProblemEight.product_of_adjacent_digits(22)).to eq 4
    end

    it "returns the product of the digits in a given number" do
      expect(ProblemEight.product_of_adjacent_digits(1234)).to eq 24
    end

    it "returns all of the products of the digits in a list of numbers" do
      expect(ProblemEight.products_of_adjacent_digits([1])).to eq [1]
    end

    it "returns all of the products of the digits in a list of numbers" do
      expect(ProblemEight.products_of_adjacent_digits([2])).to eq [2]
    end

    it "returns all of the products of the digits in a list of numbers" do
      expect(ProblemEight.products_of_adjacent_digits([2,2])).to eq [2,2]
    end

    it "returns all of the products of the digits in a list of numbers" do
      expect(ProblemEight.products_of_adjacent_digits([11,22])).to eq [1,4]
    end

    it "returns the sequence of a given length with the largest product in a number" do
      expect(ProblemEight.sequence_with_largest_product(1,1)).to eq 1
    end

    it "returns the sequence of a given length with the largest product in a number" do
      expect(ProblemEight.sequence_with_largest_product(123,2)).to eq 23
    end

    it "returns the sequence of a given length with the largest product in a number" do
      expect(ProblemEight.sequence_with_largest_product(1234,3)).to eq 234
    end

    it "returns the sequence of a given length with the largest product in a number" do
      n = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450
      expect(ProblemEight.sequence_with_largest_product(n,4)).to eq 9989
    end
  end
end