class RemoveCreatedAtColumnFromTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :completed_at
  end
end
