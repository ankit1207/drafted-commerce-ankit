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
class Keyword < ApplicationRecord
  has_many :metrics, class_name: "KeywordMetric", foreign_key: "keyword_id"
  belongs_to :ad_group
end
