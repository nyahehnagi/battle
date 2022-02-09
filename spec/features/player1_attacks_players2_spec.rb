# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "Player 1 attacks player 2" do
  scenario 'confirm player 1 attacks players 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Bob attacks Fred'
  end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
  scenario "Player 1's attack reduced Players 2 hitpoints by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to_not have_content "Fred has 100 hitpoints"  
    expect(page).to have_content "Fred has 90 hitpoints"
  end

end