class NumberToWords

  def initialize(number)
    @number = number
  end

  def translate()
    ones_and_teens = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
    tens = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    hash_array = [ones_and_teens, tens]
    backwards_number_array = @number.to_s().split('').reverse()
    number_of_digits = backwards_number_array.length()
    word_elements = []

    if @number <= 19 # IF LAST 2 DIGITS are <= 19
        word_elements.push(ones_and_teens.fetch(@number))
    elsif @number >= 20
      i = 0
      backwards_number_array.each do |digit|
        word_elements.push((hash_array[i]).fetch(digit.to_i()))
        i = i + 1
      end
    end
    word_elements.reverse().join(" ")
  end
end
