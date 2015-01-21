module ProjectEuler
  module ProblemFour
    def self.largest_palindrome(number_of_digits)
      number_options = all_numbers_with_same_number_of_digits(number_of_digits)
      multiplier_combinations = palindromic_multipliers(number_options)
      products = palindromic_products(multiplier_combinations)
      largest_number(products)
    end

    def self.palindrome?(n)
      n == n.to_s.reverse.to_i
    end

    def self.all_numbers_with_same_number_of_digits(number_of_digits)
      return [] if number_of_digits == 0
      start_of_range = ("1" + "0" * (number_of_digits-1)).to_i
      end_of_range = start_of_range * 10 - 1
      (start_of_range..end_of_range).to_a
    end

    def self.palindromic_multipliers(number_options)
      number_options.combination(2).select {|a, b| palindrome?(a*b)}
    end

    def self.palindromic_products(multiplier_combinations)
      multiplier_combinations.map {|a, b| a * b}
    end

    def self.largest_number(palindromes)
      palindromes.sort.last
    end
  end
end