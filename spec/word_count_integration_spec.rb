require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('') do
    visit('/')
    fill_in('target', :with => "party")
    fill_in('string', :with => "Charlie Sheen sober winning party or heavy drinking Vatican assassin warlocks what party")
    click_button('Submit')
    expect(page).to have_content('The word party is in the string 2 times')
  end
end
