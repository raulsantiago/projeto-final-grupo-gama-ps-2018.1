class Team < ApplicationRecord
  has_many :user, dependent: :destroy
  has_many :project, dependent: :destroy
end
