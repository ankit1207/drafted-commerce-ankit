class CreateCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :campaigns do |t|
      t.datetime :last_retrieved_at
      t.string :name
      t.string :external_id
      t.string :campaign_type
      t.string :targeting_type
      t.boolean :premium_bid_adjustment
      t.string :daily_budget
      t.datetime :start_date
      t.string :state
      t.string :bidding_strategy
      t.references :profile
      t.timestamps
    end
  end
end