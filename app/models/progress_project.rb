class ProgressProject < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :unity, optional: true
  has_many :progress_project_unity
end
