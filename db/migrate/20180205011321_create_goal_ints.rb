class CreateGoalInts < ActiveRecord::Migration[5.1]
  def change
    create_table :goal_ints do |t|
      t.string :name_goal_int
      t.integer :year_goal_int

      t.timestamps
    end
  end
end
