require('rspec')
require('word_count')

describe('String#word_count') do
  it('compares two words to see if they are the same') do
    expect('Boom'.word_count('Boom')).to(eq(1))
  end
  it('compares two words to see if they are the same word') do
    expect('babble'.word_count('latin')).to(eq(0))
  end
  it('finds one instance of a target word in a string input that contains multiple words') do
    expect('mic drop leatherpants lamborgini mercy'.word_count("leatherpants")).to(eq(1))
  end
  it('downcases all user inputs and then looks for one or more instances of a target word in a string input') do
    expect('Vatican assassin warlocks what two donuts and a Rockstar winning'.word_count('rockstar')).to(eq(1))
  end
  it('finds more than one instance of a target word in a string input that contains multiple words') do
    expect('Little hands Little Marco rich tremendous what spray-can orange eeeyuuuuge'.word_count("Little")).to(eq(2))
  end
end
