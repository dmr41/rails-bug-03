require 'rails_helper'
require 'capybara/rails'

feature 'Register' do

  scenario 'Users can Register but not without an email' do
    visit new_registration_path
    click_button "Register"
    expect(page).to have_content("Email can't be blank")
  end

end
