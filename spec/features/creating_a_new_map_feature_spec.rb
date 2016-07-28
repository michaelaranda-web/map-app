require "rails_helper"

RSpec.feature "Creating a new map", :type => :feature do
  scenario "User creates a new map" do
    visit root_path

    click_link "Click here"

    expect(page).to have_text("Create a New Map")
  end
end