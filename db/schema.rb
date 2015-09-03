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

ActiveRecord::Schema.define(version: 20150901053431) do

  create_table "departments", primary_key: "dept_id", force: :cascade do |t|
    t.string   "dept_name",      limit: 255
    t.string   "dept_head",      limit: 255
    t.string   "location",       limit: 255
    t.integer  "no_of_employee", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "employees", primary_key: "emp_id", force: :cascade do |t|
    t.string   "emp_name",        limit: 255
    t.string   "qualification",   limit: 255
    t.date     "dob"
    t.date     "date_of_joining"
    t.integer  "exp_in_years",    limit: 4
    t.integer  "dept_id",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "employees", ["dept_id"], name: "index_employees_on_dept_id", using: :btree

  add_foreign_key "employees", "departments", column: "dept_id", primary_key: "dept_id"
end
