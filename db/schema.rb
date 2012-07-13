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

ActiveRecord::Schema.define(:version => 20120713113813) do

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "databases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ides", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "member_achievements", :force => true do |t|
    t.integer  "member_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "member_additional_educations", :force => true do |t|
    t.integer  "member_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "member_jobs", :force => true do |t|
    t.integer  "member_id"
    t.string   "company"
    t.date     "started_at"
    t.date     "finished_at"
    t.string   "job"
    t.text     "responsibility"
    t.text     "achievements"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "member_langs", :force => true do |t|
    t.integer  "member_id"
    t.integer  "language_id"
    t.string   "level"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "member_others", :force => true do |t|
    t.integer  "member_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "member_preferences", :force => true do |t|
    t.integer  "member_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "member_skill_others", :force => true do |t|
    t.integer  "member_id"
    t.string   "name"
    t.string   "type"
    t.string   "level"
    t.string   "duration"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "member_skills", :force => true do |t|
    t.integer  "member_id"
    t.string   "type"
    t.integer  "dict_id"
    t.string   "dict_type"
    t.string   "level"
    t.string   "duration"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "state"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "patronymic"
    t.string   "phone"
    t.string   "skype"
    t.string   "jabber"
    t.integer  "icq"
    t.string   "institute"
    t.integer  "start_year"
    t.integer  "finish_year"
    t.string   "department"
    t.string   "profession"
    t.string   "degree"
    t.string   "gpa"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "web"
    t.boolean  "camp_time"
    t.boolean  "camp_life"
    t.boolean  "camp_fee"
    t.boolean  "camp_notebook"
    t.boolean  "camp_training"
    t.text     "hobby"
    t.text     "sport"
    t.string   "start_month"
    t.string   "finish_month"
    t.string   "password_digest",   :null => false
    t.string   "auth_token"
    t.string   "group"
    t.string   "how_hear_about_as"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "vkontakte"
    t.string   "city"
    t.date     "birthday"
    t.integer  "schoolyear_count"
  end

  create_table "news", :force => true do |t|
    t.string   "name"
    t.string   "uri"
    t.text     "body"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "state"
  end

  create_table "os", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "others", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "uri"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photo_album_photos", :force => true do |t|
    t.integer  "photo_album_id"
    t.string   "image"
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "description"
    t.boolean  "main"
  end

  create_table "photo_albums", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
  end

  create_table "program_langs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
