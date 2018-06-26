require 'rspec'
require 'number_to_words'
require 'pry'

describe ("NumberToWords#translate") do
  it("will take the number 3 and return 'three'") do
    number = NumberToWords.new(3)
    expect(number.translate()).to(eq("three"))
  end
  it("will take the number 7 and return 'seven'") do
    number = NumberToWords.new(7)
    expect(number.translate()).to(eq("seven"))
  end
  it "will take the number 11 and return eleven" do
    number = NumberToWords.new(11)
    expect(number.translate()).to(eq("eleven"))
  end
  it "will take the number 10 and return ten" do
    number = NumberToWords.new(10)
    expect(number.translate()).to(eq("ten"))
  end
  it "will take the number 23 and return twenty two" do
    number = NumberToWords.new(23)
    expect(number.translate()).to(eq("twenty three"))
  end
  it "will take the number 100 and return one hundred" do
    number = NumberToWords.new(200)
    expect(number.translate()).to(eq("two hundred"))
  end
  it "will take the number 119 and return one hundred nineteen" do
    number = NumberToWords.new(217)
    expect(number.translate()).to(eq("two hundred seventeen"))
  end
  it "will take the number 123 and return one hundred twenty three" do
    number = NumberToWords.new(123)
    expect(number.translate()).to(eq"one hundred twenty three")
  end
end
