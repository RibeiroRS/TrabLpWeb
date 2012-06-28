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

ActiveRecord::Schema.define(:version => 20120622024948) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.integer  "number"
    t.string   "district"
    t.string   "city"
    t.string   "complement"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "deliveries", :force => true do |t|
    t.string   "description"
    t.float    "weight"
    t.float    "volume"
    t.float    "totalCost"
    t.boolean  "paid"
    t.integer  "addressFrom"
    t.integer  "addressTo"
    t.integer  "vehicle_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "deliveries", ["vehicle_id"], :name => "index_deliveries_on_vehicle_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "login"
    t.string   "password"
    t.integer  "rg"
    t.integer  "cpf"
    t.integer  "address_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["address_id"], :name => "index_users_on_address_id"

  create_table "vehicles", :force => true do |t|
    t.string   "type"
    t.float    "maxWeight"
    t.float    "maxVolume"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
