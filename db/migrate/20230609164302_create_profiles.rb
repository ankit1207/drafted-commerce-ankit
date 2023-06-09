class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :external_id
      t.datetime :inactive_at, default: Time.now
      t.references :api_account
      t.references :marketplace
      t.references :account
      t.timestamps
    end
  end
end
