class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :tasks
end
