# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "Player 1 attacks player 2" do
  scenario 'confirm player 1 attacks players 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Bob attacks Fred'
  end
end