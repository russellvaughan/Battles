def sign_in_and_play
    visit '/'
    fill_in('player1_name', with: 'Iryna')
    fill_in('player2_name', with: 'Barry')
    click_button('Submit')
end