# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature "Attack" do
  scenario "allow Player1 attack Player2 and get confirmation" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Iryna hitted Barry")
  end
end