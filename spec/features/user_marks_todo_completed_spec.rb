require "rails_helper"
require 'support/features/sign_in'

feature "User marks the task completed" do 
  scenario "Successfully" do
    sign_in
    click_on "Add a new TODO"
    fill_in "Title", with: "Learn Rails TDD"
    click_on "Submit"
    click_on "Mark Completed"
    expect(page).to have_css ".todos li.completed", text: "Learn Rails TDD"
  end
end
