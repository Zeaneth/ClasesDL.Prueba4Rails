class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :task

  validates :task_id, uniqueness: true

end
