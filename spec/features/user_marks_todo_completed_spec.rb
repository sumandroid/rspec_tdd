require "rails_helper"
require 'support/features/sign_in'
require 'support/features/todo_helper'

feature "User marks the task completed" do 
  scenario "Successfully" do
    sign_in
    create_todo "Learn Rails TDD"
    click_on "Mark Completed"
    expect(page).to have_css ".todos li.completed", text: "Learn Rails TDD"
  end
end
