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

ActiveRecord::Schema.define(:version => 20110416154847) do

  create_table "pages", :force => true do |t|
    t.string   "path"
    t.string   "name",       :null => false
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["path", "name"], :name => "index_pages_on_path_and_name", :unique => true

  create_table "wiki", :force => true do |t|
    t.string   "path"
    t.string   "name",       :null => false
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki", ["path", "name"], :name => "index_wiki_on_path_and_name", :unique => true

end
