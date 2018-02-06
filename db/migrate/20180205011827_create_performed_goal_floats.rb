class CreatePerformedGoalFloats < ActiveRecord::Migration[5.1]
  def change
    create_table :performed_goal_floats do |t|
      t.float :january
      t.float :february
      t.float :march
      t.float :april
      t.float :may
      t.float :june
      t.float :july
      t.float :august
      t.float :september
      t.float :october
      t.float :november
      t.float :december
      t.references :goal_float, foreign_key: true

      t.timestamps
    end
  end
end
