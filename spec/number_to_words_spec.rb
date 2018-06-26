require 'rspec'
require 'number_to_words'
require 'pry'

describe ("NumberToWords#translate") do
  it("will take the number 3 and return 'three'") do
    number = NumberToWords.new(3)
    expect(number.translate()).to(eq("three"))
  end
end
