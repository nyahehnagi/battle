def sign_in_and_play
  visit '/'
  fill_in :player_name_1, with: "Bob"
  fill_in :player_name_2, with: "Fred"
  click_button 'Enter Gladiators'
end