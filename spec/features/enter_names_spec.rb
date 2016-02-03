  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  feature "Enter players name" do
    scenario "allow players entering their names" do
      sign_in_and_play
      expect(page).to have_content("Iryna vs. Barry")
    end
  end