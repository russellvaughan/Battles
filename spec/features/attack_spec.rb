feature "Attack" do

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario "allow Player1 attack Player2 and get confirmation" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Iryna hitted Barry")
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP
  scenario "attack reduce opponent's HP" do
    sign_in_and_play
    click_link('Attack')
    click_link('Back to game')
    expect(page).to have_content("Barry: 50 HP")
  end

end