class Solver
  def self.factorial(num)
    return 'Error' if num.instance_of?(String)
    return 'Error' if num.negative?
    return 1 if num <= 1

    factorial(num - 1) * num
  end

  def self.fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end

  def self.reverse(str)
    str.reverse
  end
end
