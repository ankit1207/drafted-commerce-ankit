class CreateApiAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :api_accounts do |t|
      t.string :name
      t.string :encrypted_refresh_token
      t.string :encrypted_refresh_token_iv
      t.timestamps
    end
  end
end
