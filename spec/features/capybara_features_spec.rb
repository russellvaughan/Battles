feature "User Story => Battle" do
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario "allow players entering their names" do
    visit '/'
    fill_in('player1', with: 'Iryna')
    fill_in('player2', with: 'Barry')
    click_button('Submit')
    expect(page).to have_content("Iryna vs. Barry")
  end
end