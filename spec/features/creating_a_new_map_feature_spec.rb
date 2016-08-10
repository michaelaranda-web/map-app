require "rails_helper"

RSpec.feature "Creating a new map", type: :feature, js: true do
  include CreateAccountHelper
  
  scenario "User creates a new map" do
    visit root_path
    
    expect(page).to have_content("MapApp")
    expect(page).to have_content("Sign Up")
    
    click_link "Sign Up"
    
    expect(current_path).to eq(new_user_registration_path)

    signup_with_valid_account_information
    
    click_button "Sign up"
    
    expect(current_path).to eq(root_path)
    
    click_link "Click here"

    expect(current_path).to eq(new_map_path)
    expect(page).to have_content("Create a New Map")
    expect(page).to have_css('#map-frame')
    
    fill_in "map_name", with: "Michael's Map of Mightiness"
    fill_in "map_starting_latitude", with: "3.14159"
    fill_in "map_starting_longitude", with: "2.71828"
    
    click_button "Create Map"
    
    expect(page).to have_content("Your New Map")
    
    expect(page).to have_content("Michael's Map of Mightiness")
    expect(page).to have_content("3.14159")
    expect(page).to have_content("2.71828")
  end
end