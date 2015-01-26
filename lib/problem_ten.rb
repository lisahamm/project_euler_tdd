module ProjectEuler
  module ProblemTen
    include PrimeNumber

    def options(limit)
      if limit < 8
        options = (2...limit).to_a
      else
        options = (2..limit).to_a
        options.reject!{|n| n % 2 == 0}
        options.reject!{|n| n % 3 == 0}
        options.reject!{|n| n % 5 == 0}
        options.reject!{|n| n % 7 == 0}
      end
    end

    def prime_numbers(options)
      prime_options = options.last > 7 ? [2,3,5,7] | options : options
      prime_options.each {|n| yield n if prime?(n)}
    end

  end
end