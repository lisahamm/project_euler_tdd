module ProjectEuler
  module ProblemTwelve
    def self.triangular_number_with_over_n_divisors(number_of_divisors)
      i = 1
      loop do
        triangular_number = (1..i).reduce(:+)
        return triangular_number if divisors(triangular_number).length > number_of_divisors
        i += 1
      end
    end

    def self.divisors(number)
      (1..number).find_all {|i| number % i == 0 }
    end
  end
end