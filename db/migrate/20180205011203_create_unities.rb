class CreateUnities < ActiveRecord::Migration[5.1]
  def change
    create_table :unities do |t|
      t.string :name_unity

      t.timestamps
    end
  end
end
