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
class Snapshot < ApplicationRecord
  validates_presence_of :external_id
  belongs_to :profile
end
