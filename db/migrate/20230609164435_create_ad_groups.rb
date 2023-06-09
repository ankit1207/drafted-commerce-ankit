class CreateAdGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :ad_groups do |t|
      t.datetime :last_retrieved_at
      t.string :name
      t.string :external_id
      t.string :default_bid
      t.string :state
      t.references :campaign
      t.timestamps
    end
  end
end