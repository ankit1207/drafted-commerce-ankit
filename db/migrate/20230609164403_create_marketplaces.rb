class CreateMarketplaces < ActiveRecord::Migration[7.0]
  def change
    create_table :marketplaces do |t|
      t.string :name
      t.string :region
      t.string :external_id
      t.string :country_code
      t.string :timezone

      t.timestamps
    end
  end
end
