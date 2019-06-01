require 'rails_helper'

RSpec.feature "A User Signs Out" do 

  before do
    @user = User.create!(email: "test@example.com", password: "password")
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
  end
  
  scenario "A user signs out" do
    visit "/"
    click_link "Sign out"
    expect(page).to have_content("Signed out successfully.")
  end
  
end