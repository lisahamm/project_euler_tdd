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
      number_sequences = 1 if number.to_s.length == 1
      while start_index+number_of_digits < number.to_s.length
        number_sequences << adjacent_number_sequence(number, number_of_digits, start_index)
        start_index += 1
      end
      number_sequences
    end
  end
end