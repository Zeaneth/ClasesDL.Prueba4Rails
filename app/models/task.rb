class Task < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :users, through: :todos



  def completed?(user_id)
    todo = Todo.find_by(user: user_id, task: id)
    todo.done? if todo
  end

  def ranking_members
    todos.where('done_at IS NOT NULL').sort_by(&:done_at).first(5) if todos.any?
  end
end
