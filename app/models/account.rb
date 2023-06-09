# == Schema Information
#
# Table name: accounts
#
#  id           :bigint           not null, primary key
#  name         :string
#  account_type :string
#  external_id  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Account < ApplicationRecord
  validates_presence_of :external_id

  has_many :profiles
end
