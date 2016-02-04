require 'capybara/dsl'
require 'selenium-webdriver'

describe 'Entering names' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  it 'accepts the names' do
    visit('/')
    fill_in('player_1_name', with: 'Alain')
    fill_in('player_2_name', with: 'Rebecca')
    click_button('Submit')
    expect(page).to have_content('Alain vs Rebecca')
  end
end