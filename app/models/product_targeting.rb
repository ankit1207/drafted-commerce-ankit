# == Schema Information
#
# Table name: product_targetings
#
#  id                :bigint           not null, primary key
#  last_retrieved_at :datetime
#  expression_type   :string
#  state             :string
#  bid               :string
#  ad_group_id       :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class ProductTargeting < ApplicationRecord
  has_many :metrices, class_name: "ProductTargetingMetric", foreign_key: "product_targeting_id"
  belongs_to :ad_group
end
