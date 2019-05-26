require 'rails_helper'

RSpec.feature "A User Signs In" do
  before do
    @user = User.create!(email: "test@example.com", password: "password")
  end
  scenario "A user signs in with valid credentials" do
    visit "/"
    click_link "Sign In"
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_content("Signed in as #{@user.email}")
  end
end