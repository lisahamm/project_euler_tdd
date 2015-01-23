module ProjectEuler
  module ProblemEight
    def self.adjacent_number_sequences(number, number_of_digits)
      number_sequences = []
      start_index = 0
      return [number.to_i] if number.length == 1
      while start_index+number_of_digits <= number.length
        number_sequences << number[start_index...start_index+number_of_digits].to_i
        start_index += 1
      end
      number_sequences
    end

    def self.product_of_adjacent_digits(number)
      number.to_s.chars.map(&:to_i).reduce(:*)
    end

    def self.products_of_adjacent_digits(number)
      number.map {|n| product_of_adjacent_digits(n)}
    end

    def self.largest_product(number_sequences)
      largest_product = 0
      number_sequences.each {|n| largest_product = n if n > largest_product}
      largest_product
    end

    def self.largest_product_index(sequence_products, product)
      sequence_products.find_index(product)
    end

    def self.sequence_with_largest_product(number_sequences, index)
      number_sequences[index]
    end
  end
end