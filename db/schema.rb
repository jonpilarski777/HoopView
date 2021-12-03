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

ActiveRecord::Schema.define(version: 2021_12_03_231120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_games", force: :cascade do |t|
    t.string "matchup"
    t.datetime "date"
    t.string "venue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "wins"
    t.integer "losses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "daily_game_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "opponent"
    t.string "venue"
    t.datetime "date"
    t.boolean "home"
    t.boolean "conference_game"
    t.integer "favorite_team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_stats", force: :cascade do |t|
    t.integer "games_played"
    t.decimal "ppg"
    t.decimal "rpg"
    t.decimal "apg"
    t.decimal "three_pt_percentage"
    t.decimal "field_goal_percentage"
    t.decimal "ft_percentage"
    t.decimal "topg"
    t.decimal "spg"
    t.decimal "bpg"
    t.decimal "ppga"
    t.integer "favorite_team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_daily_games", force: :cascade do |t|
    t.datetime "today"
    t.integer "user_id"
    t.integer "daily_game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_favorite_teams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "favorite_team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "team"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

end
