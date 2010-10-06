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

ActiveRecord::Schema.define(:version => 20101006213006) do

  create_table "base_stats", :force => true do |t|
    t.string   "race"
    t.integer  "loc",                                   :default => 3
    t.integer  "con",                                   :default => 10
    t.integer  "halo",                                  :default => 0
    t.integer  "willpower",                             :default => 0
    t.integer  "boon_cost",                             :default => 0
    t.integer  "multiplier_agility",                    :default => 3
    t.integer  "multiplier_connection",                 :default => 3
    t.integer  "multiplier_intellect",                  :default => 3
    t.integer  "multiplier_magic",                      :default => 3
    t.integer  "multiplier_might",                      :default => 3
    t.string   "racial_flaws"
    t.string   "racial_abilities"
    t.string   "racial_skills"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mana",                                  :default => 0
    t.integer  "starting_skillpts",                     :default => 25
    t.integer  "faith",                                 :default => 0
    t.string   "deity",                  :limit => nil
    t.string   "racial_multiplier_mods", :limit => nil
    t.string   "primary_sphere", :default = "arcane"
  end

  create_table "boons", :force => true do |t|
    t.integer  "howmany"
    t.string   "reason"
    t.date     "date_gained"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", :force => true do |t|
    t.string   "backstory"
    t.integer  "user_id"
    t.string   "character_name"
    t.string   "race"
    t.string   "gender"
    t.string   "alignment"
    t.string   "deity"
    t.integer  "multiplier_agility"
    t.integer  "multiplier_connection"
    t.integer  "multiplier_intellect"
    t.integer  "multiplier_magic"
    t.integer  "multiplier_might"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "loc",                   :default => 3,  :null => false
    t.integer  "con",                   :default => 10, :null => false
    t.integer  "halo",                  :default => 1,  :null => false
    t.integer  "willpower",             :default => 0,  :null => false
    t.integer  "mana",                  :default => 0,  :null => false
    t.integer  "faith",                 :default => 0,  :null => false
    t.string "primary_sphere", :default => 'arcane', :null => false
  end

  create_table "experiences", :force => true do |t|
    t.integer  "character_id"
    t.integer  "exp_gained",      :default => 0
    t.boolean  "gains_bonus_pts"
    t.string   "game_note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "game_date"
    t.float    "lp_spent",        :default => 0.0
    t.float    "ep_spent",        :default => 0.0
  end

  create_table "flaws", :force => true do |t|
    t.integer  "character_id"
    t.integer  "exp_value"
    t.string   "flaw_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "character_id"
    t.string   "what"
    t.string   "description"
    t.date     "expiry_date"
    t.integer  "value"
    t.integer  "howmany"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.integer  "character_id"
    t.string   "skill_name"
    t.string   "skill_subtype"
    t.integer  "rank"
    t.integer  "skillcost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category",      :limit => nil, :null => false
  end

  create_table "spells", :force => true do |t|
    t.integer  "character_id"
    t.string   "spell_name"
    t.string   "sphere"
    t.integer  "level"
    t.boolean  "custom",            :default => false
    t.string   "spell_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
