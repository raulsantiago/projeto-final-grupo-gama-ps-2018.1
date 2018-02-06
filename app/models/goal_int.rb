class GoalInt < ApplicationRecord
  has_many :performed_goal_int, dependent: :destroy
  has_many :projection_goal_int, dependent: :destroy
  has_many :reached_goal_int, dependent: :destroy
end
