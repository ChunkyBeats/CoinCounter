require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the coin counter path', {:type => :feature}) do
  it('processes the users change and returns the coin amount') do
    visit('/')
    fill_in('string', :with => '32')
    click_button('Send')
    expect(page).to have_content('1 quarters, 1 nickels, 2 pennies')
  end
end
