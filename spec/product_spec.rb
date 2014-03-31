require 'spec_helper'
require 'capybara/rspec'
require_relative '../product_app'
Capybara.app = ProductApp

feature "User can add products to a homepage" do
  scenario "User can add products to homepage" do
    visit '/'
    click_link "Add a Product"
    fill_in "product", with: "Bag of Piranhas"
    click_on "Create Product"
    expect(page).to have_content "Welcome"
    expect(page).to have_content "Bag of Piranhas"
  end
end
