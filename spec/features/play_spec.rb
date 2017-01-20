require 'spec_helper'

feature "Attack" do
  scenario "fisrt atack" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Attacked Eleanor."
  end
  scenario "after fisrt atack" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Varvara vs. Eleanor."
    expect(page).to have_content "Attacked Eleanor."
    expect(page).to have_content "Eleanor HP: 10."
    click_button "Attack"
    expect(page).to have_content "Eleanor vs. Varvara."
    expect(page).to have_content "Attacked Varvara."
    expect(page).to have_content "Varvara HP: 10."
  end
end
