module ProjectEuler
  module ProblemFourteen
    def self.collatz_sequence(n)
      sequence = [n]
      while n > 1
        sequence << next_collatz_term(n)
        n = next_collatz_term(n)
      end
      sequence
    end

    def self.next_collatz_term(n)
      n.even? ? n/2 : 3*n+1
    end
  end
end