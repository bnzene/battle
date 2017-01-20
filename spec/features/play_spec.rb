require 'spec_helper'

feature "Attack" do
  scenario "after first attack" do
    sign_in_and_play
    expect(page).to have_content "Varvara vs. Eleanor."
    click_button "Eleanor attacks!"
    expect(page).to have_content "Varvarra attacked Eleanor."
    expect(page).to have_content "Vravara HP: 20."
    expect(page).to have_content "Eleanor HP: 10."
    click_button "Varvara attacks!"
    expect(page).to have_content "Eleanor attacked Varvara."
    expect(page).to have_content "Vravara HP: 10."
    expect(page).to have_content "Eleanor HP: 10."
  end
  scenario "player looses" do
    sign_in_and_play
    click_button "Eleanor attacks!"
    click_button "Varvara attacks!"
    click_button "Eleanor attacks!"
    expect(page).to have_content "Eleanor has lost the game!"
  end
end
