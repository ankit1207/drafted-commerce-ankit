# == Schema Information
#
# Table name: snapshots
#
#  id            :bigint           not null, primary key
#  snapshot_type :string
#  external_id   :string
#  status        :string
#  loaded_in_db  :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class SnapshotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
