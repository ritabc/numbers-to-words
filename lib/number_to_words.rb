class NumberToWords

  def initialize(number)
    @number = number
  end

  def translate()
    ones = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    teens = {11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19=> 'nineteen'}
    tens = {10 => "ten", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    check_ones = ones.keys()
    check_teens = teens.keys()
    check_tens = tens.keys()
    if check_ones.include?(@number)
      ones.fetch(@number)
    elsif check_teens.include?(@number)
      teens.fetch(@number)
    elsif check_tens.include?(@number)
      tens.fetch(@number)
    end
  end
end
