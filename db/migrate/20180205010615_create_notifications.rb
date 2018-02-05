class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :name_notification
      t.string :text
      t.datetime :date_send

      t.timestamps
    end
  end
end
