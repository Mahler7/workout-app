require 'rails_helper'

RSpec.feature "A user visits the home page" do
  
  scenario "A user sees a link for Home" do
    visit "/"
    expect(page).to have_link("Home")
  end

  scenario "A user sees a link for Athletes Den" do
    visit "/"
    expect(page).to have_link("Atheletes Den")
  end

  scenario "A user sees content for Workout Lounge" do
    visit "/"
    expect(page).to have_content("Workout Lounge")
  end

  scenario "A user sees content for Show Off Your Workout" do
    visit "/"
    expect(page).to have_content("Show Off Your Workout")
  end
end