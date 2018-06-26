class NumberToWords

  def initialize(number)
    @number = number
  end

  def translate()
    ones_and_teens = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
    tens = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    check_ones_and_teens = ones_and_teens.keys()
    check_tens = tens.keys()
    number_to_translate = @number.to_s().split('').reverse()

    if number_to_translate.length() == 1
      ones_and_teens.fetch(@number)
    elsif (number_to_translate[1] + number_to_translate[0]).to_i() < 19
      ones_and_teens.fetch(@number)
    # else
    #   x = 0
    #   number_to_translate.each do |digit|
    #
    #
    # number_to_translate.each do |digit|
    #   if check_ones_and_teens.include?(number_to_translate[0]) || number_to_translate
    #     ones.fetch(@number)
    #   elsif check_teens.include?(@number)
    #     teens.fetch(@number)
    #   elsif check_tens.include?(@number)
    #     tens.fetch(@number)
    #   end
    end

  end
end
