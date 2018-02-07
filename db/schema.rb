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

ActiveRecord::Schema.define(version: 20180207005021) do

  create_table "goal_floats", force: :cascade do |t|
    t.string "name_goal_float"
    t.integer "year_goal_float"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goal_ints", force: :cascade do |t|
    t.string "name_goal_int"
    t.integer "year_goal_int"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "name_notification"
    t.string "text"
    t.datetime "date_send"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", force: :cascade do |t|
    t.string "name_office"
    t.integer "permission"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_offices_on_user_id"
  end

  create_table "performed_goal_floats", force: :cascade do |t|
    t.float "january"
    t.float "february"
    t.float "march"
    t.float "april"
    t.float "may"
    t.float "june"
    t.float "july"
    t.float "august"
    t.float "september"
    t.float "october"
    t.float "november"
    t.float "december"
    t.integer "goal_float_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_float_id"], name: "index_performed_goal_floats_on_goal_float_id"
  end

  create_table "performed_goal_ints", force: :cascade do |t|
    t.integer "january"
    t.integer "february"
    t.integer "march"
    t.integer "april"
    t.integer "may"
    t.integer "june"
    t.integer "july"
    t.integer "august"
    t.integer "september"
    t.integer "october"
    t.integer "november"
    t.integer "december"
    t.integer "goal_int_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_int_id"], name: "index_performed_goal_ints_on_goal_int_id"
  end

  create_table "progress_project_unities", force: :cascade do |t|
    t.integer "progress_project_id"
    t.integer "unity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["progress_project_id"], name: "index_progress_project_unities_on_progress_project_id"
    t.index ["unity_id"], name: "index_progress_project_unities_on_unity_id"
  end

  create_table "progress_projects", force: :cascade do |t|
    t.string "origin_unity"
    t.string "destiny_unity"
    t.string "information"
    t.datetime "date_send"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_progress_projects_on_project_id"
  end

  create_table "projection_goal_floats", force: :cascade do |t|
    t.float "january"
    t.float "february"
    t.float "march"
    t.float "april"
    t.float "may"
    t.float "june"
    t.float "july"
    t.float "august"
    t.float "september"
    t.float "october"
    t.float "november"
    t.float "december"
    t.integer "goal_float_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_float_id"], name: "index_projection_goal_floats_on_goal_float_id"
  end

  create_table "projection_goal_ints", force: :cascade do |t|
    t.integer "january"
    t.integer "february"
    t.integer "march"
    t.integer "april"
    t.integer "may"
    t.integer "june"
    t.integer "july"
    t.integer "august"
    t.integer "september"
    t.integer "october"
    t.integer "november"
    t.integer "december"
    t.integer "goal_int_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_int_id"], name: "index_projection_goal_ints_on_goal_int_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name_project"
    t.datetime "date_term"
    t.datetime "date_completed"
    t.integer "team_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_projects_on_team_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "reached_goal_floats", force: :cascade do |t|
    t.boolean "january"
    t.boolean "february"
    t.boolean "march"
    t.boolean "april"
    t.boolean "may"
    t.boolean "june"
    t.boolean "july"
    t.boolean "august"
    t.boolean "september"
    t.boolean "october"
    t.boolean "november"
    t.boolean "december"
    t.integer "goal_float_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_float_id"], name: "index_reached_goal_floats_on_goal_float_id"
  end

  create_table "reached_goal_ints", force: :cascade do |t|
    t.boolean "january"
    t.boolean "february"
    t.boolean "march"
    t.boolean "april"
    t.boolean "may"
    t.boolean "june"
    t.boolean "july"
    t.boolean "august"
    t.boolean "september"
    t.boolean "october"
    t.boolean "november"
    t.boolean "december"
    t.integer "goal_int_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_int_id"], name: "index_reached_goal_ints_on_goal_int_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name_tasks"
    t.string "description"
    t.integer "sprint"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unities", force: :cascade do |t|
    t.string "name_unity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_notifications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "notification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notification_id"], name: "index_user_notifications_on_notification_id"
    t.index ["user_id"], name: "index_user_notifications_on_user_id"
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tasks_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tasks_id"], name: "index_user_tasks_on_tasks_id"
    t.index ["user_id"], name: "index_user_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "team_id"
    t.index ["team_id"], name: "index_users_on_team_id"
  end

end
