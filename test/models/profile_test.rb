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
require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
