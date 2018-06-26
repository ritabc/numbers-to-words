class NumberToWords

  def initialize(number)
    @number = number
  end

  def translate()
    ones = {3 => "three"}
    ones.fetch(@number)
  end

end
