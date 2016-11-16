require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score') do
    visit('/')
    fill_in('word', :with => 'syzygy')
    click_button('Score it!')
    expect(page).to have_content(25)
  end
end
