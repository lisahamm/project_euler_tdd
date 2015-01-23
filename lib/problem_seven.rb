require 'prime_number'

module ProjectEuler
  module ProblemSeven

    include PrimeNumber

    def nth_prime_number(nth_term)
      term = 0
      prime_numbers_up_to_nth_term(nth_term) {|n| term = n}
      term
    end
  end
end