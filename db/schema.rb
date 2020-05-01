ActiveRecord::Schema.define(version: 2020_01_08_212750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pomodoros", force: :cascade do |t|
    t.string "timer_length"
    t.string "break_length"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description"
    t.integer "user_id"
    t.string "importance"
    t.string "urgency"
    t.integer "pomodoros"
    t.boolean "complete_status"
    t.string "category"
    t.integer "predicted_pom"
    t.string "environment"
    t.integer "priority_order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
