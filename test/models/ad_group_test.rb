# == Schema Information
#
# Table name: ad_groups
#
#  id                :bigint           not null, primary key
#  last_retrieved_at :datetime
#  name              :string
#  external_id       :string
#  default_bid       :string
#  state             :string
#  campaign_id       :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class AdGroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
