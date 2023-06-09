class CreateProductTargetings < ActiveRecord::Migration[7.0]
  def change
    create_table :product_targetings do |t|
      t.datetime :last_retrieved_at
      t.string :expression_type
      t.string :state
      t.string :bid
      t.references :ad_group
      t.timestamps
    end
  end
end
