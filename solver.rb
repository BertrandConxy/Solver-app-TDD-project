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
end