# == Schema Information
#
# Table name: api_accounts
#
#  id                         :bigint           not null, primary key
#  name                       :string
#  encrypted_refresh_token    :string
#  encrypted_refresh_token_iv :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
class ApiAccount < ApplicationRecord
  validates_presence_of :encrypted_refresh_token, :encrypted_refresh_token_iv

  has_many :profiles
end
