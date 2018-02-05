class CreateUserTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tasks do |t|
      t.references :user, foreign_key: true
      t.references :tasks, foreign_key: true

      t.timestamps
    end
  end
end
