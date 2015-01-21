module ProjectEuler
  module ProblemSix
    def self.sum_of_squares(range)
      range.to_a.reduce {|sum, n| sum += n**2}
    end

    def self.square_of_sum(range)
      range.to_a.reduce(:+)**2
    end

    def self.square_of_sum_minus_sum_of_squares(range)
      square_of_sum(range) - sum_of_squares(range)
    end
  end
end