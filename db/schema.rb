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

ActiveRecord::Schema.define(version: 2018_11_18_232053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_transactions", force: :cascade do |t|
    t.datetime "transaction_date"
    t.string "entity"
    t.decimal "amount"
    t.string "description"
    t.integer "transaction_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

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

  create_table "assumption_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assumptions", force: :cascade do |t|
    t.string "name"
    t.bigint "assumption_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assumption_category_id"], name: "index_assumptions_on_assumption_category_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "user_id"
    t.boolean "attended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_attendances_on_course_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "blog_posts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "content"
    t.boolean "active"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blog_posts_on_user_id"
  end

  create_table "blog_tags", force: :cascade do |t|
    t.bigint "blog_post_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_post_id"], name: "index_blog_tags_on_blog_post_id"
    t.index ["tag_id"], name: "index_blog_tags_on_tag_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "book_type"
    t.string "link"
    t.integer "lecture_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "course_inscriptions", force: :cascade do |t|
    t.boolean "approved"
    t.bigint "course_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_inscriptions_on_course_id"
    t.index ["user_id"], name: "index_course_inscriptions_on_user_id"
  end

  create_table "course_professors", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_professors_on_course_id"
    t.index ["user_id"], name: "index_course_professors_on_user_id"
  end

  create_table "course_requirements", force: :cascade do |t|
    t.integer "course"
    t.integer "required_course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "seats"
    t.integer "branch"
    t.boolean "active"
    t.decimal "student_price"
    t.decimal "adult_price"
    t.boolean "open_inscriptions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dangers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.integer "wear_state", default: 0
    t.integer "quantity", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_loans", force: :cascade do |t|
    t.bigint "equipment_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_equipment_loans_on_equipment_id"
    t.index ["user_id"], name: "index_equipment_loans_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "lesson_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_conditions", force: :cascade do |t|
    t.bigint "medical_record_id"
    t.string "condition"
    t.string "precautions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medical_record_id"], name: "index_medical_conditions_on_medical_record_id"
  end

  create_table "medical_records", force: :cascade do |t|
    t.string "blood_type"
    t.string "medical_insurance"
    t.string "health_insurance"
    t.string "prefered_medical_center"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_medical_records_on_user_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_menu_items_on_menu_id"
  end

  create_table "merchandises", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.integer "quantity"
    t.decimal "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mountain_zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news_posts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.datetime "event_date"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_news_posts_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.text "content"
    t.string "url"
    t.boolean "active"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "payment_type"
    t.integer "payment_method"
    t.integer "product_type"
    t.integer "status"
    t.string "transaction_id"
    t.string "last_four_digits"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "risks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "slides", force: :cascade do |t|
    t.string "name"
    t.string "caption"
    t.integer "position"
    t.string "media_url"
    t.integer "media_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaction_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "assumptions", "assumption_categories"
  add_foreign_key "attendances", "courses"
  add_foreign_key "attendances", "users"
  add_foreign_key "blog_posts", "users"
  add_foreign_key "blog_tags", "blog_posts"
  add_foreign_key "blog_tags", "tags"
  add_foreign_key "books", "users"
  add_foreign_key "course_inscriptions", "courses"
  add_foreign_key "course_inscriptions", "users"
  add_foreign_key "course_professors", "courses"
  add_foreign_key "course_professors", "users"
  add_foreign_key "equipment_loans", "equipment"
  add_foreign_key "equipment_loans", "users"
  add_foreign_key "medical_conditions", "medical_records"
  add_foreign_key "medical_records", "users"
  add_foreign_key "news_posts", "users"
  add_foreign_key "payments", "users"
end
