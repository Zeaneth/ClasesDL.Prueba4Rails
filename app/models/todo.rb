class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :task

  #Reference so it works with validation of two columns at the same time: https://stackoverflow.com/questions/34424154/rails-validate-uniqueness-of-two-columns-together
  validates :task_id, uniqueness: { scope: :user_id}

end
