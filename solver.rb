class Solver
  def find_factorial(arg)
    if arg.zero?
      1
    elsif arg.negative?
      raise ArgumentError
    else
      arg.downto(1).reduce(:*)
    end
  end

  def reverse_string(arg)
    arg.reverse
  end

  def fizzbuzz(arg)
    if (arg % 3).zero? && (arg % 5).zero?
      'fizzbuzz'
    elsif (arg % 5).zero?
      'buzz'
    elsif (arg % 3).zero?
      'fizz'
    else
      arg.to_s
    end
  end
end
