module ProjectEuler
  module ProblemTen
    include PrimeNumber

    def options(limit)
      (2...limit).to_a.reject {|option| first_ten_primes.any? {|prime| option % prime == 0 && option != prime}}
    end

    def prime_numbers(options)
      options.each {|n| yield n if prime?(n)}
    end

    def first_ten_primes
      [2,3,5,7,11,13,17,19,23,29]
    end

  end
end