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

	scenario 'player 2 HP reduced after attack' do 
		sign_in_and_play
		click_button("Attack!")
		click_link("OK")
		expect(page).to have_content("Rebecca's HP: 90/100")
	end

end

