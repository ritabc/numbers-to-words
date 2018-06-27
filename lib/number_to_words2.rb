class NumberToWords

  def initialize(number)
    @number = number
  end

  def translate()
    ones_and_teens = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
    tens = {0 => nil, 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    base_ten = {3 => "hundred", 4 => "thousand", 5 => "thousand", 6 => "hundred thousand", 7 => "million", 8 => "million", 9 => "hundred million"}
    hash_array = [ones_and_teens, tens, ones_and_teens]

    backwards_number_array = @number.to_s().split('').reverse()
    number_of_digits = backwards_number_array.length()
    word_elements = []

    if ((backwards_number_array[0]).to_i()) < 10 && number_of_digits == 1 # If digit < 10, then push that ones or teens number to word_elements
      word_elements.push(ones_and_teens.fetch((backwards_number_array[0]).to_i))
    elsif ((backwards_number_array[1] + backwards_number_array[0]).to_i()) >= 10 && ((backwards_number_array[1] + backwards_number_array[0]).to_i()) < 20 # IF LAST 2 DIGITS are <= 19, then push that ones or teens number to word_elements
      word_elements.push(ones_and_teens.fetch((backwards_number_array[1] + backwards_number_array[0]).to_i))
    elsif @number >= 20 && number_of_digits == 2
      i = 0
      backwards_number_array.each do |digit|
        word_elements.push((hash_array[i]).fetch(digit.to_i()))
        i = i + 1
      end
    elsif @number >= 100
      i = 0
      backwards_number_array.each do |digit|
        # binding.pry
        if i == 3
          word_elements.push(base_ten.fetch(backwards_number_array.length()))
          word_elements.push(ones_and_teens.fetch(digit.to_i()))
          i = i + 1
        elsif i == 2

          word_elements.push(base_ten.fetch(i + 1))
          word_elements.push(ones_and_teens.fetch(digit.to_i()))
          i = i + 1
        else
          word_elements.push((hash_array[i]).fetch(digit.to_i()))
          i = i + 1
        end
      end
    end
    # elsif @number >= 1000
    #   i = 0
    #   backwards_number_array.each do |digit|
    #     if i == 3
    #       word_elements.push(base_ten.fetch(backwards_number_array.length()))
    #       word_elements.push(ones_and_teens.fetch(digit.to_i()))
    #       i = i + 1
    #     else
    #       word_elements.push((hash_array[i]).fetch(digit.to_i()))
    #       i = i + 1
    #     end
    #   end
    # end
    word_elements.reverse().join(" ").rstrip()
  end
end
