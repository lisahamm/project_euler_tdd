module ProjectEuler
  module ProblemThirteen
    def self.sums_of_columns(digit_array)
      number_of_columns = digit_array[0].length
      sums = []
      (0...number_of_columns).to_a.each {|column_index| sums << sum_column(digit_array, column_index)}
      sums
    end

    def self.sum_column(digit_array, column_index)
      sum = 0
      digit_array.each {|n| sum += n[column_index]}
      sum
    end

    def self.format_number(number_array)
      number_array.map {|i| i.chars.map(&:to_i)}
    end
  end
end