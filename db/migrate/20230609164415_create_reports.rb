class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :report_type
      t.string :external_id
      t.string :status
      t.boolean :loaded_in_db
      t.references :profile
      t.timestamps
    end
  end
end
