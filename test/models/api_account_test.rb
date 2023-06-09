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
require "test_helper"

class ApiAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
