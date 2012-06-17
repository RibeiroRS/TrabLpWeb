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

ActiveRecord::Schema.define(:version => 20120616190904) do

  create_table "usuario", :force => true do |t|
    t.integer   "rg"
	t.integer   "cpf"
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
	t.timestamps
  end

  create_table "entrega", :force => true do |t|
	t.integer   "volume_pacote_litros"
	t.integer	"peso_kg"
    t.string   "rua_fonte"
    t.integer   "num_fonte"
	t.string   "bairro_fonte"
	t.string    "cidade_fonte"
	t.string   "rua_destino"
    t.integer   "num_destino"
	t.string   "bairro_destino"
	t.string    "cidade_destino"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
	t.timestamps
  end

  create_table "valor", :force => true do |t|
    t.integer  "km"
    t.float    "valor",         :default => 0.0
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
	t.timestamps
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
