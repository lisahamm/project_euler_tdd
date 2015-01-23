module ProjectEuler
  module ProblemNine
    def self.pythagorean_triplet?(a,b,c)
      a**2 + b**2 == c**2 && a < b && b < c
    end

    def self.sum(*args)
      args.reduce(:+)
    end

    def self.product(*args)
      args.reduce(:*)
    end

    def self.pythagorean_triplet_with_sum(n)
      a, b, c = 0, 0, 0
      (0..n/2).to_a.combination(3).to_a.select {|a,b,c| pythagorean_triplet?(a,b,c) && sum(a,b,c) == n}.flatten
    end
  end
end