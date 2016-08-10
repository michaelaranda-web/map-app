require "rails_helper"

RSpec.feature "Creating a new account", type: :feature, js: true do
  include CreateAccountHelper
  
  scenario "User creates a new account" do
    visit root_path
    
    expect(page).to have_content("MapApp")
    expect(page).to have_content("Sign Up")
    
    click_link "Sign Up"

    expect(current_path).to eq(new_user_registration_path)

    signup_with_valid_account_information
    
    click_button "Sign up"
    
    expect(current_path).to eq(root_path)
    expect(page).to have_content("Sign Out")
    
    click_link "Click here"
    
    expect(current_path).to eq(new_map_path)
  end
end