class CreateDataFiles < ActiveRecord::Migration[7.1]
  def change
    create_table :data_files do |t|
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
