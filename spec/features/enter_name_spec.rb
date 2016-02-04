require 'capybara/dsl'
require 'selenium-webdriver'

describe 'Entering names' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  it 'accepts the names' do
    sign_in_and_play
    expect(page).to have_content('Alain vs Rebecca')
  end
end