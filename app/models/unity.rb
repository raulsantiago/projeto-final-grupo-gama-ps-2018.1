class Unity < ApplicationRecord
  has_many :progress_project_unity
  belongs_to :progress_project, optional: true
end
