require 'capybara/dsl'
require 'selenium-webdriver'

feature 'Seeing Player 2 HP' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  scenario 'view HP' do
    visit('/')
    fill_in('player_1_name', with: 'Alain')
    fill_in('player_2_name', with: 'Rebecca')
    click_button('Submit')
    expect(page).to have_content("Rebecca's HP: 100/100")
  end
end