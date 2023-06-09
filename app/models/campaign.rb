# == Schema Information
#
# Table name: campaigns
#
#  id                     :bigint           not null, primary key
#  last_retrieved_at      :datetime
#  name                   :string
#  external_id            :string
#  campaign_type          :string
#  targeting_type         :string
#  premium_bid_adjustment :boolean
#  daily_budget           :string
#  start_date             :datetime
#  state                  :string
#  bidding_strategy       :string
#  profile_id             :bigint
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Campaign < ApplicationRecord
  validates_presence_of :external_id

  has_many :ad_groups
  belongs_to :profile
end
