require 'spec_helper'

feature "Attack" do
  scenario "after first attack" do
    sign_in_and_play
    expect(page).to have_content "Varvara vs. Eleanor."
    click_button "Varvara attacks!"
    expect(page).to have_content "Varvara attacked Eleanor."
    expect(page).to have_content "Varvara HP: 20."
    expect(page).to have_content "Eleanor HP: 10."
    click_button "Eleanor attacks!"
    expect(page).to have_content "Eleanor attacked Varvara."
    expect(page).to have_content "Varvara HP: 10."
    expect(page).to have_content "Eleanor HP: 10."
  end
end
