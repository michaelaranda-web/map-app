require "rails_helper"

RSpec.feature "Creating a new account", type: :feature, js: true do
  scenario "User creates a new account" do
    visit root_path
    
    expect(page).to have_content("MapApp")
    expect(page).to have_content("Sign Up")
    
    click_link "Sign Up"

    expect(current_path).to eq(new_user_registration_path)

    fill_in "user_email", with: "frank@ocean.com"
    fill_in "user_password", with: "password"
    fill_in "user_password_confirmation", with: "password"
    
    click_button "Sign up"
    
    expect(current_path).to eq(root_path)
    
    # expect(page).to have_content("Your New Map")
    
    # expect(page).to have_content("Michael's Map of Mightiness")
    # expect(page).to have_content("3.14159")
    # expect(page).to have_content("2.71828")
  end
end