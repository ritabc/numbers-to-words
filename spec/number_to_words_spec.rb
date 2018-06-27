require 'rspec'
require 'number_to_words'
require 'pry'

describe ("NumberToWords#translate") do
  it "will take the number 2 and return the word two" do
    number = NumberToWords.new(2)
    expect(number.translate()).to(eq('two'))
  end
  it "will take the number 11 and return eleven" do
    number = NumberToWords.new(11)
    expect(number.translate()).to(eq("eleven"))
  end
  it "will take the number 21 and return twenty one" do
    number = NumberToWords.new(21)
    expect(number.translate()).to(eq("twenty one"))
  end
  it "will take the number 97 and return ninety seven" do
    number = NumberToWords.new(97)
    expect(number.translate()).to(eq("ninety seven"))
  end
  it "will take the number 100 and return one hundred" do
    number = NumberToWords.new(123)
    expect(number.translate()).to(eq("one hundred twenty three"))
  end
  it "will take the number 100 and return one hundred" do
    number = NumberToWords.new(100)
    expect(number.translate()).to(eq("one hundred"))
  end

  it "will take the number 867 and return eight hundred sixty seven" do
    number = NumberToWords.new(867)
    expect(number.translate()).to(eq("eight hundred sixty seven"))
  end

  it "will take the number 4687 and return four thousand six hundred eighty seven" do
    number = NumberToWords.new(4687)
    expect(number.translate()).to(eq("four thousand six hundred eighty seven"))
  end

  it "will take the number 20,687 and return twenty thousand six hundred eighty seven" do
    number = NumberToWords.new(20687)
    expect(number.translate()).to(eq("twenty thousand six hundred eighty seven"))
  end
  it "will take the number 14,687 and return twenty thousand six hundred eighty seven" do
    number = NumberToWords.new(99687)
    expect(number.translate()).to(eq("ninety nine thousand six hundred eighty seven"))
  end
end
