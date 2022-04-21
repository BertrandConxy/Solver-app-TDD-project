class Solver
    def find_factorial(arg)
        if arg == 0
            1
        elsif arg < 0
            "can't work on negative integers"
        else
            arg.downto(1).reduce(:*)
        end
    end
    
    def reverse_string(arg)
        arg.reverse
    end

    def fizzbuzz(arg)
        if (arg % 3 == 0 && arg % 5 == 0)
            "fizzbuzz"
        elsif arg % 5 == 0
            "buzz"
        elsif arg % 3 == 0
            "fizz"
        else
            arg.to_s
        end
    end
end