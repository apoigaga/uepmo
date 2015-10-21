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

ActiveRecord::Schema.define(version: 20151011161804) do

  create_table "approvals", force: :cascade do |t|
    t.string   "approvals_status_name", limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "campus", force: :cascade do |t|
    t.string   "campus_name", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "departments_name", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "employee_tasks", force: :cascade do |t|
    t.string   "employee_tasks_name", limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employees_name",  limit: 255
    t.string   "employees_email", limit: 255
    t.string   "employees_phone", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "faculties_name", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "positions_name", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "programmes", force: :cascade do |t|
    t.string   "programmes_name",    limit: 255
    t.string   "programmes_manager", limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "project_attachments", force: :cascade do |t|
    t.string   "project_attachments",      limit: 255
    t.string   "project_attachments_desc", limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "project_statuses", force: :cascade do |t|
    t.string   "project_statuses_name", limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name",           limit: 255
    t.text     "description",            limit: 65535
    t.date     "start_date"
    t.date     "finish_date"
    t.string   "lead_director",          limit: 255
    t.string   "programme_manager",      limit: 255
    t.string   "project_manager",        limit: 255
    t.string   "programme",              limit: 255
    t.string   "Transformation",         limit: 255
    t.string   "Components",             limit: 255
    t.text     "project_outcome",        limit: 65535
    t.string   "Teras_RMKe11_Berkaitan", limit: 255
    t.string   "Agenda_Utama_Berkaitan", limit: 255
    t.string   "KPI_UiTM_Berkaitan",     limit: 255
    t.text     "deliverables",           limit: 65535
    t.text     "first_milestone",        limit: 65535
    t.text     "impact",                 limit: 65535
    t.text     "budget",                 limit: 65535
    t.text     "latihan",                limit: 65535
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staffs_name",  limit: 255
    t.string   "staffs_email", limit: 255
    t.string   "staffs_phone", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
