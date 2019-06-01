require 'rails_helper'

RSpec.feature "A user visits the home page" do
  
  scenario "A user sees these links and content on the home page" do
    visit "/"
    expect(page).to have_link("Home")
    expect(page).to have_link("Athletes Den")
    expect(page).to have_content("Workout Lounge")
    expect(page).to have_content("Show Off Your Workout")
  end
end