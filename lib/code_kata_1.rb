class FizzBuzz
    def self.print_fizz_buzz upto_number
        result = ""
        1.upto(upto_number) do |i|
            current_result = ""
            current_result += "#{i}" unless FizzBuzz.divisible_by_either(i)
            current_result += "fizz" if FizzBuzz.divisible_by_3(i)
            current_result += "buzz" if FizzBuzz.divisible_by_5(i)
            result += "#{current_result},"
        end
        result.chop
    end

    def self.divisible_by_3 number
        number%3==0
    end

    def self.divisible_by_5 number
        number%5==0
    end

    def self.divisible_by_either number
        divisible_by_5(number) || divisible_by_3(number)
    end
end