class GoalInt < ApplicationRecord
  belongs_to :performed_goal_int, optional: true
  belongs_to :projection_goal_int, optional: true
  belongs_to :reached_goal_int, optional: true
end
