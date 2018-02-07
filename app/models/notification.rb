class Notification < ApplicationRecord
  has_many :user_tasks
  #belongs_to :user, optional: true
  belongs_to :user_notification, optional: true
end
