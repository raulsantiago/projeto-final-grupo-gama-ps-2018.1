class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :name_office
      t.integer :permission
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
