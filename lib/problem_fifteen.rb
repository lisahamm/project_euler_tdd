module ProjectEuler
  module ProblemFifteen
    def self.factorial_of(number)
      (1..number).reduce(:*)
    end

    def self.number_of_possible_routes(rows, columns)
      factorial_of(rows + columns)/(factorial_of(rows)*factorial_of(columns))
    end
  end
end