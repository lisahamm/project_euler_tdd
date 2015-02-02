require 'spec_helper'
require 'problem_seventeen'

module ProjectEuler
  describe ProblemSeventeen do
    let(:number_hash){{1 => 'one',
                       2 => 'two',
                       3 => 'three',
                       4 => 'four',
                       5 => 'five',
                       6 => 'six',
                       7 => 'seven',
                       8 => 'eight',
                       9 => 'nine',
                       10 => 'ten',
                       11 => 'eleven',
                       12 => 'twelve',
                       13 => 'thirteen',
                       14 => 'fourteen',
                       15 => 'fifteen',
                       16 => 'sixteen',
                       17 => 'seventeen',
                       18 => 'eighteen',
                       19 => 'nineteen',
                       20 => 'twenty',
                       30 => 'thirty',
                       40 => 'fourty',
                       50 => 'fifty',
                       60 => 'sixty',
                       70 => 'seventy',
                       80 => 'eighty',
                       90 => 'ninety',
                       100 => 'hundred',
                       1000 => 'thousand'}}

    it "returns one as the written word for 1" do
      expect(ProblemSeventeen.convert_number_to_word(1, number_hash)).to eq 'one'
    end

    it "returns one as the written word for 2" do
      expect(ProblemSeventeen.convert_number_to_word(2, number_hash)).to eq 'two'
    end

    it "returns the number of characters in a string" do
      expect(ProblemSeventeen.number_of_letters_in_word('one')).to eq 3
    end

    it "returns the number of characters in the numbers between 1 and 10 written as words" do
      word_array = []
      (1..5).each {|n| word_array << ProblemSeventeen.convert_number_to_word(n, number_hash)}
      letter_count = 0
      word_array.each {|word| letter_count += ProblemSeventeen.number_of_letters_in_word(word)}
      expect(letter_count).to eq 19
    end
  end
end