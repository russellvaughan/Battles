require 'capybara/dsl'
require 'selenium-webdriver'

feature 'attacking' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Alain successfully attacked Rebecca!')
  end
end