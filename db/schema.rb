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

ActiveRecord::Schema.define(version: 2020_11_02_222145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "crime_files", force: :cascade do |t|
    t.bigint "crime_id", null: false
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crime_id"], name: "index_crime_files_on_crime_id"
    t.index ["user_id"], name: "index_crime_files_on_user_id"
  end

  create_table "crime_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.string "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crime_thiefs", force: :cascade do |t|
    t.bigint "crime_id", null: false
    t.bigint "thief_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crime_id"], name: "index_crime_thiefs_on_crime_id"
    t.index ["thief_id"], name: "index_crime_thiefs_on_thief_id"
  end

  create_table "crime_victims", force: :cascade do |t|
    t.bigint "crime_id", null: false
    t.bigint "victim_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crime_id"], name: "index_crime_victims_on_crime_id"
    t.index ["victim_id"], name: "index_crime_victims_on_victim_id"
  end

  create_table "crime_witnesses", force: :cascade do |t|
    t.bigint "crime_id", null: false
    t.bigint "witness_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crime_id"], name: "index_crime_witnesses_on_crime_id"
    t.index ["witness_id"], name: "index_crime_witnesses_on_witness_id"
  end

  create_table "crimes", force: :cascade do |t|
    t.string "title"
    t.string "labels"
    t.string "place"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thiefs", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.string "tags"
    t.string "alias_list"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "rut"
    t.string "job"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "victims", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.integer "age"
    t.string "detalle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "witnesses", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.integer "age"
    t.string "detalle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "crime_files", "crimes"
  add_foreign_key "crime_files", "users"
  add_foreign_key "crime_thiefs", "crimes"
  add_foreign_key "crime_thiefs", "thiefs"
  add_foreign_key "crime_victims", "crimes"
  add_foreign_key "crime_victims", "victims"
  add_foreign_key "crime_witnesses", "crimes"
  add_foreign_key "crime_witnesses", "witnesses"
end
