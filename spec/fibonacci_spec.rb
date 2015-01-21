require 'spec_helper'
require 'fibonacci'

module ProjectEuler
  describe Fibonacci do
    it "returns an array of fibonacci values below 10" do
      result = []
      Fibonacci.fib_up_to(10) {|n| result << n}
      expect(result).to eq [1,1,2,3,5,8]
    end

  #   it "returns a list of fibonacci values below 2" do
  #     expect(Fibonacci.fib_up_to(10) {|n| print n, " "}).to eq "1 1 2 3 5 8"
  #   end
  # end
  end
end