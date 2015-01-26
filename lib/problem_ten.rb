module ProjectEuler
  module ProblemTen
    include PrimeNumber

    def sum_of_primes_up_to(limit)
      accum = 0
      prime_numbers_up_to(limit-1) {|n| accum += n}
      accum
    end

    def options(limit)
      options = (2..limit).to_a
      options.reject!{|n| n % 2 == 0}
      options.reject!{|n| n % 3 == 0}
      options.reject!{|n| n % 5 == 0}
      options.reject!{|n| n % 7 == 0}
    end

    def prime_numbers(options)
      prime_options = [2,3,5,7] | options
      prime_options.each {|n| yield n if prime?(n)}
    end

  end
end