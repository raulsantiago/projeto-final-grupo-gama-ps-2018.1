class Project < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :user, optional: true
  has_many :tasks, dependent: :destroy
  has_many :progress_projects, dependent: :destroy
end
