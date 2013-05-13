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

ActiveRecord::Schema.define(:version => 20130513013009) do

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "datasets", :force => true do |t|
    t.string   "title"
    t.string   "researchers"
    t.string   "url"
    t.text     "description"
    t.text     "purpose"
    t.text     "audience"
    t.string   "format"
    t.string   "location"
    t.boolean  "need_storage"
    t.boolean  "need_digitization"
    t.boolean  "complete"
    t.string   "date_range"
    t.string   "collection_rate"
    t.boolean  "interest"
    t.string   "email"
    t.boolean  "join_email_list"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
  end

  create_table "datasets_users", :id => false, :force => true do |t|
    t.integer "dataset_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "avatar"
    t.string   "email"
    t.string   "title"
    t.string   "institution"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
