# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "See hit points" do
  scenario "in battle" do
    sign_in_and_play
    expect(page).to have_content "20HP"
  end
end
