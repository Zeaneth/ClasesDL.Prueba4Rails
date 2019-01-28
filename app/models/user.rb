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

end
