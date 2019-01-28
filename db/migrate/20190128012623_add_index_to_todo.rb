class AddIndexToTodo < ActiveRecord::Migration[5.2]
  def change
    add_index :todos, [:task_id, :user_id], unique: true
  end
end
