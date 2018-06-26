require 'rspec'
require 'number_to_words2'
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
end
