module ProjectEuler
  module ProblemSixteen
    def self.base_raised_to_power(base, power)
      base ** power
    end

    def self.digits_of(number)
      number.to_s.chars.map(&:to_i)
    end

    def self.sum_of_array(number_array)
      number_array.reduce(:+)
    end
  end
end