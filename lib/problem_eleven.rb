module ProjectEuler
  module ProblemEleven
    def self.adjacent_items_left(two_dimensional_array)
      combinations = []
      row_index = 0
      while row_index < two_dimensional_array.length
        column_index = 0
        while column_index < two_dimensional_array[0].length - 3
          combinations << [two_dimensional_array[row_index][column_index], two_dimensional_array[row_index][column_index+1], two_dimensional_array[row_index][column_index+2], two_dimensional_array[row_index][column_index+3]]
          column_index += 1
        end
        row_index += 1
      end
      combinations
    end

    def self.adjacent_items_down(two_dimensional_array)
      combinations = []
      column_index = 0
      while column_index < two_dimensional_array[0].length
        row_index = 0
        while row_index < two_dimensional_array.length - 3
          combinations << [two_dimensional_array[row_index][column_index], two_dimensional_array[row_index+1][column_index], two_dimensional_array[row_index+2][column_index], two_dimensional_array[row_index+3][column_index]]
          row_index += 1
        end
        column_index += 1
      end
      combinations
    end

    def self.adjacent_items_diagonal_down(two_dimensional_array)
      combinations = []
      column_index = 0
      while column_index < two_dimensional_array.length - 3
        row_index = 0
        while row_index < two_dimensional_array[0].length - 3
          combinations << [two_dimensional_array[column_index][row_index], two_dimensional_array[column_index+1][row_index+1], two_dimensional_array[column_index+2][row_index+2], two_dimensional_array[column_index+3][row_index+3]]
          row_index += 1
        end
        column_index += 1
      end
      combinations
    end

    def self.adjacent_items_diagonal_up(two_dimensional_array)
      combinations = []
      row_index = two_dimensional_array.length-1
      while row_index >= 3
        column_index = 0
        while column_index < two_dimensional_array[0].length-3
          combinations << [two_dimensional_array[row_index][column_index], two_dimensional_array[row_index-1][column_index+1], two_dimensional_array[row_index-2][column_index+2], two_dimensional_array[row_index-3][column_index+3]]
          column_index += 1
        end
        row_index -= 1
      end
      combinations
    end

    def self.largest_product(combinations)
      combinations.map {|a,b,c,d| a*b*c*d}.max
    end
  end
end