class User < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :tasks, through: :todos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def total_done
    todos.where(done: true).count
  end

  def last_done(task_id)
    todo = Todo.find_by(user: id, task: task_id)
    todo ? "Última vez realizada: #{todo.done_at}" : "Nunca realizada :c"
  end

end
