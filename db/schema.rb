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

ActiveRecord::Schema[7.0].define(version: 2023_03_03_192103) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "djs", force: :cascade do |t|
    t.integer "member_id"
    t.string "speciality"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "netid"
    t.string "firstname"
    t.string "lastname"
    t.string "uin"
    t.string "email"
    t.string "phone"
    t.string "shirt"
    t.integer "strikes", default: 0
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "isdj", default: false
  end

  create_table "officers", force: :cascade do |t|
    t.integer "member_id"
    t.string "positionTitle"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_hosts", force: :cascade do |t|
    t.integer "show_id"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string "showname"
    t.string "showdescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "timeslot"
    t.integer "active", default: 0
    t.boolean "specialty", default: false
  end

end
