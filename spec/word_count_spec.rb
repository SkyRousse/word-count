require('rspec')
require('word_count')

describe('String#word_count') do
  it('finds the frequency of a word input in a string input') do
    expect('Little hands Little Marco rich tremendous what spray-can orange eeeyuuuuge'.word_count(Little)).to(eq('2'))
  end
end
