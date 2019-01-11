module Features

  def create_todo(todo_title)
    click_on "Add a new TODO"
    fill_in "Title", with: "Learn Rails TDD"
    click_on "Submit"
  end

end
