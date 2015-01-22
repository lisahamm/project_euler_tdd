module ProjectEuler
  module ProblemEight
    def self.adjacent_number_sequence(number, number_of_digits, start_index=0)
      sequence = ""
      number.to_s[start_index...start_index+number_of_digits].chars.each {|n| sequence += n}
      sequence.to_i
    end

    def self.adjacent_number_sequences(number, number_of_digits)
      number_sequences = []
      start_index = 0
      return [number] if number.to_s.length == 1
      while start_index+number_of_digits <= number.to_s.length
        number_sequences << adjacent_number_sequence(number, number_of_digits, start_index)
        start_index += 1
      end
      number_sequences
    end

    def self.product_of_adjacent_digits(n)
      n.to_s.chars.map(&:to_i).reduce(:*)
    end

    def self.products_of_adjacent_digits(n)
      n.map {|n| product_of_adjacent_digits(n)}
    end

    def self.sequence_with_largest_product(n, number_of_digits)
      number_sequences = adjacent_number_sequences(n, number_of_digits)
      sequence_with_largest_product = 0
      product = 0
      number_sequences.map do |n|
        if product_of_adjacent_digits(n) > product
          sequence_with_largest_product = n
          product = product_of_adjacent_digits(n)
        end
      end
      sequence_with_largest_product
    end

    def self.largest_product_of_sequence_digits(n, number_of_digits)
      product_of_adjacent_digits(sequence_with_largest_product(n, number_of_digits))
    end
  end
end