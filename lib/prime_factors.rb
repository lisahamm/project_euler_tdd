module ProjectEuler
  module PrimeFactors
    def self.of(n)
      factors, divisor = [], 1
      while n > 1 and divisor += 1
        factors << divisor and n/=divisor while n % divisor == 0
        divisor = n-1 if divisor > Math.sqrt(n)
      end
      factors
    end

    def self.counts(prime_factors)
      prime_factors.uniq.map {|n, count| [n, prime_factors.count(n)]}
    end
  end
end