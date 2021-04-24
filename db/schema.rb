# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_18_041840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "form"
    t.string "address"
    t.date "date_of_birth"
  end

  create_table "children_disorders", force: :cascade do |t|
    t.bigint "child_id"
    t.bigint "disorder_id"
    t.date "date"
    t.index ["child_id"], name: "index_children_disorders_on_child_id"
    t.index ["disorder_id"], name: "index_children_disorders_on_disorder_id"
  end

  create_table "disorders", force: :cascade do |t|
    t.string "title"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "fathername"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "child_id"
    t.bigint "employee_id"
    t.string "event"
    t.date "date"
    t.index ["child_id"], name: "index_events_on_child_id"
    t.index ["employee_id"], name: "index_events_on_employee_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "child_id"
    t.bigint "employee_id"
    t.string "days"
    t.string "time"
    t.string "form"
    t.index ["child_id"], name: "index_schedules_on_child_id"
    t.index ["employee_id"], name: "index_schedules_on_employee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
