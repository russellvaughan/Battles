require 'capybara/dsl'
require 'selenium-webdriver'

feature 'Seeing Player 2 HP' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  scenario 'view HP' do
    sign_in_and_play
    expect(page).to have_content("Rebecca's HP: 100/100")
  end
end