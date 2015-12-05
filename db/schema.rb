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

ActiveRecord::Schema.define(version: 20151130162424) do

  create_table "approvals", force: :cascade do |t|
    t.string   "approvalstatusname", limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "campus", force: :cascade do |t|
    t.string   "campusname", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "departmentname", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employeename",  limit: 255
    t.string   "employeeemail", limit: 255
    t.string   "employeephone", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "employeetask", force: :cascade do |t|
    t.string   "employeetaskname", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "facultyname", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "leaddirectors", force: :cascade do |t|
    t.string   "directorname", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pendaftars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "positionname", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "programmes", force: :cascade do |t|
    t.string   "programmename",    limit: 255
    t.string   "programmemanager", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "projectattachment", force: :cascade do |t|
    t.string   "projectattachment",     limit: 255
    t.string   "projectattachmentdesc", limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "projectname",          limit: 255
    t.text     "description",          limit: 65535
    t.date     "startdate"
    t.date     "finishdate"
    t.integer  "leaddirector_id",      limit: 4
    t.string   "programmemanager",     limit: 255
    t.string   "projectmanager",       limit: 255
    t.string   "programme",            limit: 255
    t.string   "transformation",       limit: 255
    t.string   "components",           limit: 255
    t.text     "projectoutcome",       limit: 65535
    t.string   "terasrmke11berkaitan", limit: 255
    t.string   "agendautamaberkaitan", limit: 255
    t.string   "kpiuitmberkaitan",     limit: 255
    t.text     "deliverables",         limit: 65535
    t.text     "firstmilestone",       limit: 65535
    t.text     "impact",               limit: 65535
    t.text     "budget",               limit: 65535
    t.text     "latihan",              limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "staff_id",             limit: 4
  end

  create_table "projectstatus", force: :cascade do |t|
    t.string   "projectstatusname", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "attachment", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staffname",  limit: 255
    t.string   "staffemail", limit: 255
    t.string   "staffphone", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
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
