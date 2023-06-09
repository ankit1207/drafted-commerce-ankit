class CreateKeywordMetrics < ActiveRecord::Migration[7.0]
  def change
    create_table :keyword_metrics do |t|
      t.datetime :date
      t.string :impressions
      t.integer :clicks
      t.string :cost
      t.string :attributed_sales_1d
      t.string :attributed_sales_7d
      t.string :attributed_sales_14d
      t.string :attributed_sales_30d
      t.string :attributed_sales_1d_same_sku
      t.string :attributed_sales_7d_same_sku
      t.string :attributed_sales_14d_same_sku
      t.string :attributed_sales_30d_same_sku
      t.string :attributed_conversions_1d
      t.string :attributed_conversions_7d
      t.string :attributed_conversions_14d
      t.string :attributed_conversions_30d
      t.string :attributed_conversions_1d_same_sku
      t.string :attributed_conversions_7d_same_sku
      t.string :attributed_conversions_14d_same_sku
      t.string :attributed_conversions_30d_same_sku
      t.string :attributed_units_ordered_1d
      t.string :attributed_units_ordered_7d
      t.string :attributed_units_ordered_14d
      t.string :attributed_units_ordered_30d
      t.references :keyword
    end
  end
end
