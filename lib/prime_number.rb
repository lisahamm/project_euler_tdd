module ProjectEuler
  module PrimeNumber
    def prime_numbers_up_to(n)
      i =  2
      while i <= n
        yield i if prime?(i)
        i += 1
      end
    end

    def prime_numbers_up_to_nth_term(nth_term)
      i = 2
      term_counter = 0
      while term_counter < nth_term
        if prime?(i)
          yield i if block_given?
          term_counter += 1
        end
        i += 1
      end
    end

    def prime?(n)
      (2..(Math.sqrt(n))).none? {|i| n % i == 0}
    end
  end
end