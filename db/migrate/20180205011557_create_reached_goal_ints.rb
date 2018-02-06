class CreateReachedGoalInts < ActiveRecord::Migration[5.1]
  def change
    create_table :reached_goal_ints do |t|
      t.boolean :january
      t.boolean :february
      t.boolean :march
      t.boolean :april
      t.boolean :may
      t.boolean :june
      t.boolean :july
      t.boolean :august
      t.boolean :september
      t.boolean :october
      t.boolean :november
      t.boolean :december
      t.references :goal_int, foreign_key: true

      t.timestamps
    end
  end
end
