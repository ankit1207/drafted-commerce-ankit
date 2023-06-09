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
class Report < ApplicationRecord
  belongs_to :profile
end
