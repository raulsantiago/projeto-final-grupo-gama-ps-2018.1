class CreateProgressProjectUnities < ActiveRecord::Migration[5.1]
  def change
    create_table :progress_project_unities do |t|
      t.references :progress_project, foreign_key: true
      t.references :unity, foreign_key: true

      t.timestamps
    end
  end
end
