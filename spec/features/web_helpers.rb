def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, :with => "Varvara"
  fill_in :player_2_name, :with => "Eleanor"
  click_button "Submit"
end
