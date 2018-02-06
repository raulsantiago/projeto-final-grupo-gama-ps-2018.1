class UserNotification < ApplicationRecord
  belongs_to :user
  belongs_to :user_notification, optional: true
  # acetar nos outros
end
