# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_09_171201) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "account_type"
    t.string "external_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ad_groups", force: :cascade do |t|
    t.datetime "last_retrieved_at"
    t.string "name"
    t.string "external_id"
    t.string "default_bid"
    t.string "state"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_ad_groups_on_campaign_id"
  end

  create_table "api_accounts", force: :cascade do |t|
    t.string "name"
    t.string "encrypted_refresh_token"
    t.string "encrypted_refresh_token_iv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.datetime "last_retrieved_at"
    t.string "name"
    t.string "external_id"
    t.string "campaign_type"
    t.string "targeting_type"
    t.boolean "premium_bid_adjustment"
    t.string "daily_budget"
    t.datetime "start_date"
    t.string "state"
    t.string "bidding_strategy"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_campaigns_on_profile_id"
  end

  create_table "keyword_metrics", force: :cascade do |t|
    t.datetime "date"
    t.string "impressions"
    t.integer "clicks"
    t.string "cost"
    t.string "attributed_sales_1d"
    t.string "attributed_sales_7d"
    t.string "attributed_sales_14d"
    t.string "attributed_sales_30d"
    t.string "attributed_sales_1d_same_sku"
    t.string "attributed_sales_7d_same_sku"
    t.string "attributed_sales_14d_same_sku"
    t.string "attributed_sales_30d_same_sku"
    t.string "attributed_conversions_1d"
    t.string "attributed_conversions_7d"
    t.string "attributed_conversions_14d"
    t.string "attributed_conversions_30d"
    t.string "attributed_conversions_1d_same_sku"
    t.string "attributed_conversions_7d_same_sku"
    t.string "attributed_conversions_14d_same_sku"
    t.string "attributed_conversions_30d_same_sku"
    t.string "attributed_units_ordered_1d"
    t.string "attributed_units_ordered_7d"
    t.string "attributed_units_ordered_14d"
    t.string "attributed_units_ordered_30d"
    t.bigint "keyword_id"
    t.index ["keyword_id"], name: "index_keyword_metrics_on_keyword_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.datetime "last_retrieved_at"
    t.string "keyword_text"
    t.string "match_type"
    t.string "state"
    t.string "bid"
    t.bigint "ad_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_group_id"], name: "index_keywords_on_ad_group_id"
  end

  create_table "marketplaces", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.string "external_id"
    t.string "country_code"
    t.string "timezone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_targeting_metrics", force: :cascade do |t|
    t.datetime "date"
    t.string "impressions"
    t.integer "clicks"
    t.string "cost"
    t.string "attributed_sales_1d"
    t.string "attributed_sales_7d"
    t.string "attributed_sales_14d"
    t.string "attributed_sales_30d"
    t.string "attributed_sales_1d_same_sku"
    t.string "attributed_sales_7d_same_sku"
    t.string "attributed_sales_14d_same_sku"
    t.string "attributed_sales_30d_same_sku"
    t.string "attributed_conversions_1d"
    t.string "attributed_conversions_7d"
    t.string "attributed_conversions_14d"
    t.string "attributed_conversions_30d"
    t.string "attributed_conversions_1d_same_sku"
    t.string "attributed_conversions_7d_same_sku"
    t.string "attributed_conversions_14d_same_sku"
    t.string "attributed_conversions_30d_same_sku"
    t.string "attributed_units_ordered_1d"
    t.string "attributed_units_ordered_7d"
    t.string "attributed_units_ordered_14d"
    t.string "attributed_units_ordered_30d"
    t.bigint "product_targeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_targeting_id"], name: "index_product_targeting_metrics_on_product_targeting_id"
  end

  create_table "product_targetings", force: :cascade do |t|
    t.datetime "last_retrieved_at"
    t.string "expression_type"
    t.string "state"
    t.string "bid"
    t.bigint "ad_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_group_id"], name: "index_product_targetings_on_ad_group_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "external_id"
    t.datetime "inactive_at", default: "2023-06-09 17:33:57"
    t.bigint "api_account_id"
    t.bigint "marketplace_id"
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_profiles_on_account_id"
    t.index ["api_account_id"], name: "index_profiles_on_api_account_id"
    t.index ["marketplace_id"], name: "index_profiles_on_marketplace_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "report_type"
    t.string "external_id"
    t.string "status"
    t.boolean "loaded_in_db"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_reports_on_profile_id"
  end

  create_table "snapshots", force: :cascade do |t|
    t.string "snapshot_type"
    t.string "external_id"
    t.string "status"
    t.boolean "loaded_in_db"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
