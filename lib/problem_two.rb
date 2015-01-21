module ProjectEuler
  module ProblemTwo
    include Fibonacci

    def self.sum_of_even_terms(upper_limit)
      accum = 0
      Fibonacci.fib_up_to(upper_limit) {|n| accum += n if n.even?}
      accum
    end
  end
end