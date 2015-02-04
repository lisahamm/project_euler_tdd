require 'prime_factors'

module ProjectEuler
  module ProblemTwelve
    include PrimeFactors

    def triangular_number_with_over_n_divisors(desired_number_of_divisors)
      triangular_number = 0
      index = 1
      loop do
        triangular_number += index
        return triangular_number if number_of_divisors(triangular_number) > desired_number_of_divisors
        index += 1
      end
    end

    def number_of_divisors(integer)
      return 1 if integer == 1
      counts_of_prime_factors(prime_factors_of(integer)).map {|count| count + 1}.reduce(:*)
    end
  end
end