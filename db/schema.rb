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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140908205300) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "customer_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "install"
    t.string   "delivery"
    t.date     "install_date",     limit: 255
    t.string   "box_count"
    t.string   "cabinet_cost"
    t.string   "counter_top_cost"
    t.string   "install_cost"
    t.string   "payment_one"
    t.string   "payment_two"
    t.string   "payment_three"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.string   "job_tag"
    t.string   "job_address"
    t.string   "job_city"
    t.string   "job_postal_code"
  end

  create_table "rooms", force: true do |t|
    t.string   "room_type"
    t.string   "material"
    t.string   "material_details"
    t.string   "exterior_colour"
    t.string   "interior_colour"
    t.string   "upper_door_style"
    t.string   "lower_door_style"
    t.string   "drawer_front_style"
    t.string   "panel_back_style"
    t.string   "finished_ends"
    t.string   "track_style"
    t.string   "drawer_box_style"
    t.string   "counter_top_material"
    t.string   "counter_top_supplier"
    t.string   "counter_top_colour"
    t.string   "counter_top_edge"
    t.string   "backsplash"
    t.string   "sink_install"
    t.string   "closed_to_ceiling"
    t.string   "crown_molding"
    t.string   "under_cabinet_molding"
    t.string   "order_name"
    t.text     "order_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
