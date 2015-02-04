module ProjectEuler
  module PrimeFactors
    def prime_factors_of(integer)
      prime_factors, divisor = [], 1
      while integer > 1 and divisor += 1
        prime_factors << divisor and integer/=divisor while integer % divisor == 0
        divisor = integer-1 if divisor > Math.sqrt(integer)
      end
      prime_factors
    end

    def counts_of_prime_factors(prime_factors)
      prime_factors.uniq.map {|prime_factor| prime_factors.count(prime_factor)}
    end
  end
end