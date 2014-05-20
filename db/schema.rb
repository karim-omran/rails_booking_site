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

ActiveRecord::Schema.define(:version => 20140518184122) do

  create_table "hotels", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hotels_pics", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image"
    t.integer  "hotel_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "hotels_pics", ["hotel_id"], :name => "index_hotels_pics_on_hotel_id"

  create_table "rates", :force => true do |t|
    t.integer  "user_id"
    t.integer  "hotel_id"
    t.string   "tilte"
    t.text     "body"
    t.integer  "rate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rates", ["hotel_id"], :name => "index_rates_on_hotel_id"
  add_index "rates", ["user_id"], :name => "index_rates_on_user_id"

  create_table "res_rooms", :force => true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.integer  "hotel_id"
    t.date     "chkin_date"
    t.date     "chkout_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "res_rooms", ["hotel_id"], :name => "index_res_rooms_on_hotel_id"
  add_index "res_rooms", ["room_id"], :name => "index_res_rooms_on_room_id"
  add_index "res_rooms", ["user_id"], :name => "index_res_rooms_on_user_id"

  create_table "rooms", :force => true do |t|
    t.integer  "number"
    t.string   "type"
    t.float    "price"
    t.integer  "hotel_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rooms", ["hotel_id"], :name => "index_rooms_on_hotel_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "enc_password"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
