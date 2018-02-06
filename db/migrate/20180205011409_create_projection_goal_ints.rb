class CreateProjectionGoalInts < ActiveRecord::Migration[5.1]
  def change
    create_table :projection_goal_ints do |t|
      t.integer :january
      t.integer :february
      t.integer :march
      t.integer :april
      t.integer :may
      t.integer :june
      t.integer :july
      t.integer :august
      t.integer :september
      t.integer :october
      t.integer :november
      t.integer :december
      t.references :goal_int, foreign_key: true

      t.timestamps
    end
  end
end
