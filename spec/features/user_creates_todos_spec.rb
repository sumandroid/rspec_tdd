require "rails_helper"
require 'support/features/sign_in'
require 'support/features/todo_helper'

feature "User creates a new todo" do 
  scenario "Successfully" do
    sign_in
    create_todo "Learn Rails TDD"
    expect(page).to have_css ".todos li", text: "Learn Rails TDD"
  end
end
