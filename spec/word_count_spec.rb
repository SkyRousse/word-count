require('rspec')
require('word_count')

describe('String#word_count') do
  it('finds one instance of a target word in a string input that contains multiple words') do
    expect('mic drop leatherpants lamborgini mercy'.word_count("leatherpants")).to(eq(1))
  end
  it('finds more than one instance of a target word in a string input that contains multiple words') do
  expect('Little hands Little Marco rich tremendous what spray-can orange eeeyuuuuge'.word_count("Little")).to(eq(2))
  end
end
