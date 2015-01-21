module ProjectEuler
  module ProblemOne
    def self.sum_of_multiples(upper_limit)
      multiples = [0]
      i = 1
      while i < upper_limit
        if multiple_of_three?(i) || multiple_of_five?(i)
          multiples << i
        end
        i += 1
      end
      multiples.reduce(:+)
    end

    def self.multiple_of_three?(i)
      i % 3 == 0
    end

    def self.multiple_of_five?(i)
      i % 5 == 0
    end
  end
end