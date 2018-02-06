class Task < ApplicationRecord
  belongs_to :project, optional: true
  has_many :user_tasks
  belongs_to :user, optional: true


end
