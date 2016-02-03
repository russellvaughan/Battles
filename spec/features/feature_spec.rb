feature 'Enter names' do
  
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Russel vs. Tom'
  end
end

feature "I want to see player 2's hit points" do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    click_link('Tom')
    expect(page).to have_content '100'
  end
end