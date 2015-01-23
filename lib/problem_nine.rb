module ProjectEuler
  module ProblemNine
    def self.pythagorean_triplet?(a,b,c)
      a**2 + b**2 == c**2 && a < b && b < c
    end
  end
end