module ProjectEuler
  module ProblemEleven
    def self.adjacent_items_left(two_dimensional_array)
      combinations = []
      column_index = 0
      while column_index < two_dimensional_array.length
        row_index = 0
        while row_index < two_dimensional_array[0].length - 3
          combinations << [two_dimensional_array[column_index][row_index], two_dimensional_array[column_index][row_index+1], two_dimensional_array[column_index][row_index+2], two_dimensional_array[column_index][row_index+3]]
          row_index += 1
        end
        column_index += 1
      end
      combinations
    end
  end
end