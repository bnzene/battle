require 'spec_helper'

feature "Game over" do
  scenario "game over" do
    sign_in_and_play
    3.times { click_button }
    expect(page).to have_content "Game over."
    expect(page).to have_content "Eleanor has lost the game!"
  end
end
