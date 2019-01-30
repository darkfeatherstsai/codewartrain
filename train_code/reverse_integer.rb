class ReverseInteger
  def initialize(number)
    @number = number
  end

  def reverse_integer
    ans = @number.abs.digits.join.to_i
    return 0 if @number > 1000
    return -ans if @number < 0
    return ans
  end

end
