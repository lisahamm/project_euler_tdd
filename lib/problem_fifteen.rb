module ProjectEuler
  module ProblemFifteen
    def self.required_number_of_moves(rows, columns)
      rows + columns
    end

    def self.number_of_right_moves(columns)
      columns
    end

    def self.number_of_down_moves(rows)
      rows
    end

    def self.factorial_of(number)
      (1..number).reduce(:*)
    end

    def self.number_of_possible_routes(rows, columns)
      factorial_of(rows + columns)/(factorial_of(rows)*factorial_of(columns))
    end
  end
end