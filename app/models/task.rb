class Task < ApplicationRecord
  has_many :todos
  has_many :users, through: :todos

  def completed?(user_id)
    todo = Todo.find_by(user: user_id, task: id)
    todo.done? if todo
  end
end
