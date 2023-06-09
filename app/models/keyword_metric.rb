# == Schema Information
#
# Table name: keyword_metrics
#
#  id                                  :bigint           not null, primary key
#  date                                :datetime
#  impressions                         :string
#  clicks                              :integer
#  cost                                :string
#  attributed_sales_1d                 :string
#  attributed_sales_7d                 :string
#  attributed_sales_14d                :string
#  attributed_sales_30d                :string
#  attributed_sales_1d_same_sku        :string
#  attributed_sales_7d_same_sku        :string
#  attributed_sales_14d_same_sku       :string
#  attributed_sales_30d_same_sku       :string
#  attributed_conversions_1d           :string
#  attributed_conversions_7d           :string
#  attributed_conversions_14d          :string
#  attributed_conversions_30d          :string
#  attributed_conversions_1d_same_sku  :string
#  attributed_conversions_7d_same_sku  :string
#  attributed_conversions_14d_same_sku :string
#  attributed_conversions_30d_same_sku :string
#  attributed_units_ordered_1d         :string
#  attributed_units_ordered_7d         :string
#  attributed_units_ordered_14d        :string
#  attributed_units_ordered_30d        :string
#  keyword_id                          :bigint
#
class KeywordMetric < ApplicationRecord
  belongs_to :keyword
end
