require './app'

feature "Display" do
  scenario "shows player's name after they register" do
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    expect(page).to have_content("Mark Eteer")
  end
  scenario "shows rock, paper, scissors options" do
    visit '/'
    fill_in 'name', with: "Mark Eteer"
    click_button 'Submit'
    expect(page).to have_field("rps")
  end
end