module ProjectEuler
  module ProblemFive
    def self.smallest_divisible_number(*args)
      dividend = args.last
      until args.all? {|divisor| dividend % divisor == 0}
        dividend += args.last
      end
      dividend
    end
  end
end