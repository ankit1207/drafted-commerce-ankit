class CreateSnapshots < ActiveRecord::Migration[7.0]
  def change
    create_table :snapshots do |t|
      t.string :snapshot_type
      t.string :external_id
      t.string :status
      t.boolean :loaded_in_db
      t.timestamps
    end
  end
end
