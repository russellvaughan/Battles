feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: 'Russel'
    fill_in :player_2, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'Russel vs. Tom'
  end
end