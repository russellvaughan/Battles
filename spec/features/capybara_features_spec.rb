feature "User Story => Battle" do
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario "allow players entering their names" do
    visit '/'
    fill_in('player1_name', with: 'Iryna')
    fill_in('player2_name', with: 'Barry')
    click_button('Submit')
    expect(page).to have_content("Iryna vs. Barry")
  end

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario "allow to see player's 2 Hit Pounts" do
    visit '/'
    fill_in('player1_name', with: 'Iryna')
    fill_in('player2_name', with: 'Barry')
    click_button('Submit')
    expect(page).to have_content("Barry: 60 HP")
  end
end