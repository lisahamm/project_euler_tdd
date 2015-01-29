module ProjectEuler
  module ProblemFourteen
    def self.longest_collatz_sequence(range)
      number_with_longest_collatz_sequence = 1
      longest_sequence = 1
      range.to_a.each do |n|
        if collatz_sequence(n).length > longest_sequence
          number_with_longest_collatz_sequence = n
          longest_sequence = collatz_sequence(n).length
        end
      end
      number_with_longest_collatz_sequence
    end

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