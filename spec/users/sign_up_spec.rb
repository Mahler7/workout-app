require 'rails_helper'

RSpec.feature "A User Signs Up" do
  scenario "A user signs up with valid credentials" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end