class CreateGoalFloats < ActiveRecord::Migration[5.1]
  def change
    create_table :goal_floats do |t|
      t.string :name_goal_float
      t.integer :year_goal_float

      t.timestamps
    end
  end
end
