require "rails_helper"
require "support/features/sign_in"

feature "User sees own todos" do
  scenario "doesn't sees other's" do
     Todo.create!(title: "Buy Milk", email: "someone_else@gmail.com")
     sign_in_as "someone@gmail.com"
     expect(page).not_to have_css ".todos li", text: "Buy Milk"
  end
end
