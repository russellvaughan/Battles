# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'switching turns' do 

	scenario 'when the game switches turns' do 
		sign_in_and_play
  	click_link('Attack')
		expect(page).to have_content("Now its Barry's turn") 
	end

	scenario 'when the game switches turns' do 
		sign_in_and_play
  	click_link('Attack')
  	click_link('Back to game')
  	click_link('Attack')
		expect(page).to have_content("Now its Iryna's turn") 
	end


end