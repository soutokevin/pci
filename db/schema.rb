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

ActiveRecord::Schema.define(version: 20170801195040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "contents", force: :cascade do |t|
    t.text     "body"
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "page_part_id"
    t.index ["page_part_id"], name: "index_contents_on_page_part_id", using: :btree
  end

  create_table "page_parts", force: :cascade do |t|
    t.string   "name"
    t.boolean  "allow_creatable"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "page_id"
    t.boolean  "allow_photo"
    t.boolean  "allow_title"
    t.boolean  "allow_text"
    t.index ["page_id"], name: "index_page_parts_on_page_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contents", "page_parts"
  add_foreign_key "page_parts", "pages"
end
