module ProjectEuler
  module ProblemThree
    def self.largest_prime_factor(n)
      return 1 if prime_factors(n).empty?
      prime_factors(n).last
    end

    def self.prime_factors(n)
      return [] if n == 1
      factor = (2..n).find {|x| n % x == 0}
      [factor] + self.prime_factors(n/factor)
    end
  end
end