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

ActiveRecord::Schema[7.0].define(version: 2023_11_09_203114) do
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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.text "bio"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "loan_durations", force: :cascade do |t|
    t.integer "days", default: 7, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_loan_durations_on_user_id"
  end

  create_table "loans", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resource_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "loan_duration_id", null: false
    t.index ["loan_duration_id"], name: "index_loans_on_loan_duration_id"
    t.index ["resource_id"], name: "index_loans_on_resource_id"
    t.index ["user_id", "resource_id"], name: "index_loans_on_user_id_and_resource_id", unique: true
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "potential_reads", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resource_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_potential_reads_on_resource_id"
    t.index ["user_id", "resource_id"], name: "index_potential_reads_on_user_id_and_resource_id", unique: true
    t.index ["user_id"], name: "index_potential_reads_on_user_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.text "about"
  end

  create_table "readings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resource_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_readings_on_resource_id"
    t.index ["user_id", "resource_id"], name: "index_readings_on_user_id_and_resource_id", unique: true
    t.index ["user_id"], name: "index_readings_on_user_id"
  end

  create_table "reads", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resource_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_reads_on_resource_id"
    t.index ["user_id", "resource_id"], name: "index_reads_on_user_id_and_resource_id", unique: true
    t.index ["user_id"], name: "index_reads_on_user_id"
  end

  create_table "resource_languages", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resource_languages_on_user_id"
  end

  create_table "resource_types", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resource_types_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "published_date"
    t.integer "pages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id", null: false
    t.bigint "publisher_id", null: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.bigint "resource_type_id", null: false
    t.bigint "resource_language_id", null: false
    t.integer "copies"
    t.integer "loans_count"
    t.integer "potential_reads_count", default: 0, null: false
    t.integer "reads_count", default: 0, null: false
    t.integer "readings_count", default: 0, null: false
    t.string "image_url"
    t.string "pdf_url"
    t.index ["author_id"], name: "index_resources_on_author_id"
    t.index ["category_id"], name: "index_resources_on_category_id"
    t.index ["publisher_id"], name: "index_resources_on_publisher_id"
    t.index ["resource_language_id"], name: "index_resources_on_resource_language_id"
    t.index ["resource_type_id"], name: "index_resources_on_resource_type_id"
    t.index ["user_id"], name: "index_resources_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "keyword"
    t.integer "category_id"
    t.integer "author_id"
    t.integer "publisher_id"
    t.integer "resource_language_id"
    t.integer "resource_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.boolean "admin", default: false, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "matric_no"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "waitlists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resource_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_waitlists_on_resource_id"
    t.index ["user_id", "resource_id"], name: "index_waitlists_on_user_id_and_resource_id", unique: true
    t.index ["user_id"], name: "index_waitlists_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "categories", "users"
  add_foreign_key "loan_durations", "users"
  add_foreign_key "loans", "loan_durations"
  add_foreign_key "loans", "resources"
  add_foreign_key "loans", "users"
  add_foreign_key "potential_reads", "resources"
  add_foreign_key "potential_reads", "users"
  add_foreign_key "readings", "resources"
  add_foreign_key "readings", "users"
  add_foreign_key "reads", "resources"
  add_foreign_key "reads", "users"
  add_foreign_key "resource_languages", "users"
  add_foreign_key "resource_types", "users"
  add_foreign_key "resources", "authors"
  add_foreign_key "resources", "categories"
  add_foreign_key "resources", "publishers"
  add_foreign_key "resources", "resource_languages"
  add_foreign_key "resources", "resource_types"
  add_foreign_key "resources", "users"
  add_foreign_key "waitlists", "resources"
  add_foreign_key "waitlists", "users"
end
