require 'spec_helper'

feature "Enter Name" do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content "Varvara vs. Eleanor"
    expect(page).to have_content "Eleanor HP: 20."
  end
end
