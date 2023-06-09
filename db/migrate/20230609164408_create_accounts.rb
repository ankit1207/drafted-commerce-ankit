class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :account_type
      t.string :external_id
      t.timestamps
    end
  end
end