require('rspec')
require('pry')

require('scrabble')

describe("it will give scores for words") do
  it ("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it ("returns a scrabble score for a letter") do
    expect("cat".scrabble()).to(eq(5))
  end
end
