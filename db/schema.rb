# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_12_174826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "my_collections", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "video_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_my_collections_on_user_id"
    t.index ["video_id"], name: "index_my_collections_on_video_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_works", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "video_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_works_on_user_id"
    t.index ["video_id"], name: "index_user_works_on_video_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "url"
    t.string "video_type"
    t.bigint "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_videos_on_product_id"
  end

  create_table "work_posts", force: :cascade do |t|
    t.string "information"
    t.string "image"
    t.bigint "user_work_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_work_id"], name: "index_work_posts_on_user_work_id"
  end

end
