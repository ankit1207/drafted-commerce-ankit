# == Schema Information
#
# Table name: keywords
#
#  id                :bigint           not null, primary key
#  last_retrieved_at :datetime
#  keyword_text      :string
#  match_type        :string
#  state             :string
#  bid               :string
#  ad_group_id       :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class KeywordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
