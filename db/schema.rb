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

ActiveRecord::Schema.define(:version => 20130327140337) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "restaurant_type_id"
  end

  add_index "categories", ["restaurant_type_id"], :name => "index_categories_on_restaurant_type_id"

  create_table "reservations", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "timeslot_id"
  end

  add_index "reservations", ["timeslot_id"], :name => "index_reservations_on_timeslot_id"
  add_index "reservations", ["user_id"], :name => "index_reservations_on_user_id"

  create_table "restaurant_types", :force => true do |t|
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "restaurant_id"
    t.integer  "category_id"
  end

  add_index "restaurant_types", ["category_id"], :name => "index_restaurant_types_on_category_id"
  add_index "restaurant_types", ["restaurant_id"], :name => "index_restaurant_types_on_restaurant_id"

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "district"
    t.string   "city"
    t.integer  "tables"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "timeslot_id"
    t.integer  "restaurant_type_id"
  end

  add_index "restaurants", ["restaurant_type_id"], :name => "index_restaurants_on_restaurant_type_id"
  add_index "restaurants", ["timeslot_id"], :name => "index_restaurants_on_timeslot_id"

  create_table "timeslots", :force => true do |t|
    t.string   "slot"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "reservation_id"
    t.integer  "restaurant_id"
  end

  add_index "timeslots", ["reservation_id"], :name => "index_timeslots_on_reservation_id"
  add_index "timeslots", ["restaurant_id"], :name => "index_timeslots_on_restaurant_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "reservation_id"
  end

  add_index "users", ["reservation_id"], :name => "index_users_on_reservation_id"

end
