require 'spec_helper'

feature "Attack Player 2" do
  scenario "in battle" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Attacked Eleanor."
  end
end
