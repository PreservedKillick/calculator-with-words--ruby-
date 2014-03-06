require('rspec')
require('calculator_words')

describe ('calculator_words') do 
  it("it searches for the plus and adds the numbers together") do
    calculator_words('what is 5 plus 3?').should(eq(8.0))
  end
  it("returns 12 for 'what is 8 plus 4'?") do
    calculator_words("what is 8 plus 4?").should(eq(12.0))
  end 
  it("returns 11 for 'what is 18 minus 7?'") do
    calculator_words("What is 18 minus 7?").should(eq(11.0))
  end
  it("returns 24 for 'What is 8 times 3?'") do
    calculator_words("What is 8 times 3?").should(eq(24.0))
  end
  it("returns 4 for 'What is 8 divided by 2?'") do
    calculator_words("What is 8 divided by 2?").should(eq(4.0))
  end
  it("returns 4 for 'What is 8 divided by 2?'") do
    calculator_words("What is 8 divided by 2?").should(eq(4.0))
  end
  it("returns floats for numbers") do
    calculator_words("What is 20 divided by 6").should(eq(3.33))
  end
end
