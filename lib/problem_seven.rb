module ProjectEuler
  module ProblemSeven
    include PrimeNumber

    def self.nth_prime_number(nth_term)
      term = 0
      PrimeNumber.prime_numbers_up_to_nth_term(nth_term) {|n| term = n}
      term
    end
  end
end