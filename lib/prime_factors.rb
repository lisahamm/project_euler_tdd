module ProjectEuler
  module PrimeFactors

    # Please don't use `and` unless you are using it for
    # its intended use cases (which are very rare and you
    # most likely won't run into them now). Should just use `&&`.
    #
    # More info here:
    #  * http://devblog.avdi.org/2014/08/26/how-to-use-rubys-english-andor-operators-without-going-nuts/
    #
    def prime_factors_of(integer)
      prime_factors, divisor = [], 1
      while integer > 1 and divisor += 1
        prime_factors << divisor and integer/=divisor while integer % divisor == 0
        divisor = integer-1 if divisor > Math.sqrt(integer)
      end
      prime_factors
    end

    # You're making this method specific to prime factors when it doesn't
    # need to be. All you're doing here is counting how many occurrences
    # of an object there are in an array of objects (in this case the
    # objects are numbers). Lastly, this method is slow. You `uniq`, then
    # `map`, then `count`. That's three calls to iterator methods that
    # create and operate on intermediate objects.
    def counts_of_prime_factors(prime_factors)
      prime_factors.uniq.map {|prime_factor| prime_factors.count(prime_factor)}
    end

    # What if we made this more general?
    def count_occurrences(list)
      list.reduce({}) do |occurrences, o|
        occurrences[o] = (occurrences[o] || 0) + 1
        occurrences
      end
    end

    # The above method behaves as follows:
    #
    #     irb(main):016:0> count_occurrences([1, 2, 2, 2, 3, 7, 7, 9, 11, 11, 11, 23, 23, 23, 59])
    #     => {1=>1, 2=>3, 3=>1, 7=>2, 9=>1, 11=>3, 23=>3, 59=>1}
    #
    # It also works on any other object:
    #
    #     irb(main):017:0> count_occurrences([true, false, true, true, false, false, true, false, true, true])
    #     => {true=>6, false=>4}
    #     irb(main):018:0> count_occurrences([[1, 2], [3, 4], [1, 2]])
    #     => {[1, 2]=>2, [3, 4]=>1}
    #
    # If you want just an array of the "counts", the return value is a hash, so you can call `values` on it
    # to get just the values. Although beware, I don't believe hash implementations are required to return
    # you the values in any particular order.
  end
end