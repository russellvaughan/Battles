feature 'Enter names' do
  
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: 'Russel'
    fill_in :player_2, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'Russel vs. Tom'
  end
end

feature "I want to see player 2's hit points" do
  scenario 'view player 2 hit points' do
    visit('/')
    fill_in :player_1, with: 'Russel'
    fill_in :player_2, with: 'Tom'
    click_button 'Submit'
    click_link('Tom')
    expect(page).to have_content '100'
  end
end