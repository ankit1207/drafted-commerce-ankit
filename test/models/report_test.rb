# == Schema Information
#
# Table name: reports
#
#  id           :bigint           not null, primary key
#  report_type  :string
#  external_id  :string
#  status       :string
#  loaded_in_db :boolean
#  profile_id   :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
