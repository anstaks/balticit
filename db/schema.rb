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

ActiveRecord::Schema.define(:version => 20130605111229) do

  create_table "comments", :force => true do |t|
    t.integer  "marker_id"
    t.integer  "user_id"
    t.integer  "document_id"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "comments", ["document_id"], :name => "index_comments_on_document_id"
  add_index "comments", ["marker_id"], :name => "index_comments_on_marker_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "document_user_relations", :force => true do |t|
    t.string   "code"
    t.integer  "document_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "document_user_relations", ["code"], :name => "index_document_user_relations_on_code", :unique => true
  add_index "document_user_relations", ["document_id", "user_id"], :name => "index_document_user_relations_on_document_id_and_user_id", :unique => true
  add_index "document_user_relations", ["document_id"], :name => "index_document_user_relations_on_document_id"
  add_index "document_user_relations", ["user_id"], :name => "index_document_user_relations_on_user_id"

  create_table "documents", :force => true do |t|
    t.string   "code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "author_id"
    t.text     "introduction"
    t.boolean  "shared"
  end

  create_table "images", :force => true do |t|
    t.string   "source"
    t.integer  "document_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "markers", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "x"
    t.string   "y"
    t.integer  "image_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "user_id"
    t.boolean  "closed",     :default => false
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "description"
    t.string   "keywords"
    t.string   "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "promo_code"
    t.float    "bonus",      :default => 0.0
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
