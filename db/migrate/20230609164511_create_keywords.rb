class CreateKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :keywords do |t|
      t.datetime :last_retrieved_at
      t.string :keyword_text
      t.string :match_type
      t.string :state
      t.string :bid
      t.references :ad_group
      t.timestamps
    end
  end
end
