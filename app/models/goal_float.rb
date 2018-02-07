class GoalFloat < ApplicationRecord
  has_many :performed_goal_float, dependent: :destroy
  has_many :projection_goal_float, dependent: :destroy
  has_many :reached_goal_float, dependent: :destroy
end
