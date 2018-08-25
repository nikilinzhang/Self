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

ActiveRecord::Schema.define(version: 20180825075623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.string   "Degree"
    t.string   "School"
    t.string   "Range"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_educations_on_user_id", using: :btree
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "Title"
    t.string   "Company"
    t.string   "Range"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_experiences_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Email"
    t.string   "Phone"
    t.string   "linkedin"
    t.string   "title"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "educations", "users"
  add_foreign_key "experiences", "users"
end
