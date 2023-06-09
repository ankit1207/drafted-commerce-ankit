# == Schema Information
#
# Table name: marketplaces
#
#  id           :bigint           not null, primary key
#  name         :string
#  region       :string
#  external_id  :string
#  country_code :string
#  timezone     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Marketplace < ApplicationRecord
  validates_presence_of :external_id
  has_many :profiles
end
