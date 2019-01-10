require "rails_helper"
require 'support/features/sign_in'

feature "User creates a new todo" do 
  scenario "Successfully" do
    sign_in
    click_on "Add a new TODO"
    fill_in "Title", with: "Learn Rails TDD"
    click_on "Submit"
    expect(page).to have_css ".todos li", text: "Learn Rails TDD"
  end
end
