require "rails_helper"

RSpec.feature "Creating a new map", type: :feature, js: true do
  scenario "User creates a new map" do
    visit root_path
    
    expect(page).to have_content("MapApp")
    expect(page).to have_content("Log In")
    
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