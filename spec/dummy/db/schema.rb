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

ActiveRecord::Schema.define(:version => 20110825150238) do

  create_table "armors", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.boolean  "head",       :default => false, :null => false
    t.boolean  "torso",      :default => false, :null => false
    t.boolean  "left_arm",   :default => false, :null => false
    t.boolean  "right_arm",  :default => false, :null => false
    t.boolean  "left_leg",   :default => false, :null => false
    t.boolean  "right_leg",  :default => false, :null => false
    t.boolean  "hands",      :default => false, :null => false
    t.boolean  "feet",       :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "char_sheets", :force => true do |t|
    t.integer  "character_id",                 :null => false
    t.integer  "int",          :default => 5,  :null => false
    t.integer  "pre",          :default => 5,  :null => false
    t.integer  "will",         :default => 5,  :null => false
    t.integer  "tech",         :default => 5,  :null => false
    t.integer  "move",         :default => 5,  :null => false
    t.integer  "ref",          :default => 5,  :null => false
    t.integer  "dex",          :default => 5,  :null => false
    t.integer  "str",          :default => 5,  :null => false
    t.integer  "con",          :default => 5,  :null => false
    t.integer  "body",         :default => 5,  :null => false
    t.integer  "stun",         :default => 25, :null => false
    t.integer  "hits",         :default => 25, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "surname",    :null => false
    t.string   "background"
    t.integer  "age",        :null => false
    t.string   "profession", :null => false
    t.integer  "owner_id",   :null => false
    t.string   "owner_type", :null => false
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumables", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "article_id",                           :null => false
    t.string   "article_type",                         :null => false
    t.integer  "character_id",                         :null => false
    t.integer  "quantity",          :default => 1,     :null => false
    t.boolean  "equipped",          :default => false, :null => false
    t.boolean  "equipped_off_hand", :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.boolean  "two_handed",          :default => false, :null => false
    t.boolean  "off_hand_equippable", :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
