# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111124050509) do

  create_table "clutches", :force => true do |t|
    t.date     "laid_on"
    t.integer  "viable"
    t.integer  "questionable"
    t.integer  "total"
    t.integer  "m_dragon_id"
    t.integer  "f_dragon_id"
    t.text     "comments"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dragons", :force => true do |t|
    t.string   "number"
    t.integer  "clutch_id"
    t.integer  "source_id"
    t.integer  "group_id"
    t.integer  "status_id"
    t.boolean  "male"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hatches", :force => true do |t|
    t.integer  "clutch_id"
    t.date     "out_on"
    t.integer  "hatchlings"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.integer  "dragon_id"
    t.integer  "room"
    t.integer  "column"
    t.integer  "row"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "usage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "morph_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "morphs", :force => true do |t|
    t.integer  "dragon_id"
    t.integer  "morph_type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", :force => true do |t|
    t.integer  "dragon_id"
    t.date     "treated_on"
    t.integer  "medication_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "manager"
    t.boolean  "employeed"
  end

  create_table "weight_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weights", :force => true do |t|
    t.integer  "dragon_id"
    t.date     "weighed_on"
    t.integer  "weight"
    t.integer  "weight_type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
