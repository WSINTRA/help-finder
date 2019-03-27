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

ActiveRecord::Schema.define(version: 2019_03_27_153157) do

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facility_id"
    t.integer "user_id"
    t.index ["facility_id"], name: "index_comments_on_facility_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "map_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facility_services", force: :cascade do |t|
    t.integer "facility_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_facility_services_on_facility_id"
    t.index ["service_id"], name: "index_facility_services_on_service_id"
  end

  create_table "service_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer "service_type"
    t.string "description"
    t.string "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facility_id"
    t.index ["comment_id"], name: "index_user_comments_on_comment_id"
    t.index ["facility_id"], name: "index_user_comments_on_facility_id"
    t.index ["user_id"], name: "index_user_comments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
