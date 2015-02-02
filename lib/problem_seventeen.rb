module ProjectEuler
  module ProblemSeventeen
    def self.convert_number_to_word(number, number_hash)
      number_hash[number]
    end

    def self.number_of_letters_in_word(word)
      word.length
    end
  end
end