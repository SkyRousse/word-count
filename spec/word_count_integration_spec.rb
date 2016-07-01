require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('takes the word input and finds the number of occurances in the string input') do
    visit('/')
    fill_in('target', :with => "party")
    fill_in('string', :with => "Charlie Sheen sober winning party or heavy drinking Vatican assassin warlocks what party")
    click_button('Submit')
    expect(page).to have_content('The word party is in the string 2 times')
  end
  it('takes the word input and finds the number of occurances in the string input') do
    visit('/')
    fill_in('target', :with => "win")
    fill_in('string', :with => "winning")
    click_button('Submit')
    expect(page).to have_content('The word win is in the string 0 times')
  end
  it('takes the word input and finds the number of occurances in the string input') do
    visit('/')
    fill_in('target', :with => "America")
    fill_in('string', :with => "The Make America Great Again taco bowl. Trump Steaks little hands winning. America Little Marco tremendous. America Make america Great Again spray-can orange. America Build the wall taco bowl")
    click_button('Submit')
    expect(page).to have_content('The word america is in the string 5 times')
  end
end
