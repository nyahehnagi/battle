# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Enter player names' do
  scenario 'submit names'do
    visit('/gladiators')
    fill_in 'player_name_1', with: "Bromley"
    fill_in 'player_name_2', with: "Francesco"
    click_button 'Enter Gladiators'
    expect(page).to have_content 'Bromley vs Francesco'
  end
end