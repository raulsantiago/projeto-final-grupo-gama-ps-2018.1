class Notification < ApplicationRecord
  has_many :user_notification, dependent: :destroy
end
