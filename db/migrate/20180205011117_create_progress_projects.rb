class CreateProgressProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :progress_projects do |t|
      t.string :origin_unity
      t.string :destiny_unity
      t.string :information
      t.datetime :date_send
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
