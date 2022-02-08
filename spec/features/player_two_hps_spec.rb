# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "Player 2 hitpoints" do
  scenario 'show hitpoints for player 2' do
    visit '/'
    fill_in :player_name_1, with: "Bob"
    fill_in :player_name_2, with: "Fred"
    click_button 'Enter Gladiators'
    expect(page).to have_content 'Fred has 20 hitpoints'
  end
end