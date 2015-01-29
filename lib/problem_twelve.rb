module ProjectEuler
  module ProblemTwelve
    def self.triangular_number_with_over_n_divisors(desired_number_of_divisors)
      triangular_number = 0
      divisors = 0
      i = 1
      loop do
        triangular_number += i
        if number_of_divisors(triangular_number) > divisors
          divisors = number_of_divisors(triangular_number)
          puts "i: #{i}, triangular number: #{triangular_number}, number of divisors: #{divisors}, current time: #{Time.now}"
        end
        return triangular_number if number_of_divisors(triangular_number) > desired_number_of_divisors
        i += 1
      end
    end

    def self.number_of_divisors(number)
      return 1 if number == 1
      ((1..number/2).find_all {|i| number % i == 0 } + [number]).length
    end
  end
end