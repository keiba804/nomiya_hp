# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_31_124941) do

  create_table "drink_categories", force: :cascade do |t|
    t.string "drink_category_name"
    t.integer "drink_active_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drink_menus", force: :cascade do |t|
    t.integer "drink_category_id"
    t.string "drink_name"
    t.string "drink_explanation"
    t.string "drink_price"
    t.string "drink_sales_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_categories", force: :cascade do |t|
    t.string "food_category_name"
    t.integer "food_active_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_menus", force: :cascade do |t|
    t.integer "food_category_id"
    t.string "food_name"
    t.string "food_explanation"
    t.string "food_price"
    t.string "takeout"
    t.string "food_sales_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name"
    t.string "genre"
    t.string "restaurant_phone_number"
    t.string "restaurant_adress"
    t.string "access"
    t.string "regular_holiday"
    t.string "opening_time"
    t.string "charge"
    t.string "payment"
    t.string "introduce_title"
    t.text "introduce_body"
    t.integer "restaurant_top_image"
    t.integer "restaurant_status", default: 0
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_restaurants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_restaurants_on_reset_password_token", unique: true
  end

end
