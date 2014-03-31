require 'spec_helper'
require 'capybara/rspec'
require_relative '../product_app'
Capybara.app = ProductApp

feature "User can add products to a homepage" do
  scenario "User is welcomed to homepage" do
    visit '/'
    expect(page).to have_content "Welcome"
  end
end