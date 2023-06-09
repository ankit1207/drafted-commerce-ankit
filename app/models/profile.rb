# == Schema Information
#
# Table name: profiles
#
#  id             :bigint           not null, primary key
#  external_id    :string
#  inactive_at    :datetime         default(Fri, 09 Jun 2023 17:33:57.388880000 UTC +00:00)
#  api_account_id :bigint
#  marketplace_id :bigint
#  account_id     :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Profile < ApplicationRecord
  validates_presence_of :external_id

  has_many :reports
  has_many :snapshots
  has_many :campaigns

  belongs_to :api_account
  belongs_to :marketplace
  belongs_to :account

  def inactive?
    inactive_at.present? and Time.now > inactive_at
  end

  def active?
    !inactive?
  end
end
