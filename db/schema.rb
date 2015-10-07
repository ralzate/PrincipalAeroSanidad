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

ActiveRecord::Schema.define(version: 20151007140330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_informations", force: :cascade do |t|
    t.text     "analysis"
    t.text     "print_diagnosed"
    t.text     "plan_and_treatment"
    t.text     "observations_recommendations"
    t.integer  "clinic_history_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "additional_informations", ["clinic_history_id"], name: "index_additional_informations_on_clinic_history_id", using: :btree

  create_table "arles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "cities", ["department_id"], name: "index_cities_on_department_id", using: :btree

  create_table "clinic_histories", force: :cascade do |t|
    t.string   "city"
    t.string   "department"
    t.integer  "user_id"
    t.string   "cove"
    t.string   "mobiel_service"
    t.integer  "airport"
    t.integer  "type_service"
    t.integer  "patient_id"
    t.string   "origin"
    t.string   "destination"
    t.string   "company"
    t.string   "accompanist_name"
    t.integer  "relationship"
    t.string   "phone"
    t.text     "reason_for_consultation"
    t.text     "current_illness"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "clinic_histories", ["patient_id"], name: "index_clinic_histories_on_patient_id", using: :btree
  add_index "clinic_histories", ["user_id"], name: "index_clinic_histories_on_user_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "departments", ["country_id"], name: "index_departments_on_country_id", using: :btree

  create_table "epses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "mailboxer_conversation_opt_outs", ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
  add_index "mailboxer_conversation_opt_outs", ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "mailboxer_notifications", ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
  add_index "mailboxer_notifications", ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
  add_index "mailboxer_notifications", ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
  add_index "mailboxer_notifications", ["type"], name: "index_mailboxer_notifications_on_type", using: :btree

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "mailboxer_receipts", ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
  add_index "mailboxer_receipts", ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_surname"
    t.string   "second_surname"
    t.string   "email"
    t.integer  "type_document"
    t.string   "document"
    t.integer  "days_age"
    t.integer  "months_age"
    t.integer  "years_age"
    t.date     "birthdate"
    t.integer  "gender"
    t.string   "profession"
    t.integer  "blood_type"
    t.integer  "nacionality"
    t.integer  "eps_id"
    t.integer  "arl_id"
    t.string   "address"
    t.integer  "condition"
    t.integer  "city_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "patients", ["arl_id"], name: "index_patients_on_arl_id", using: :btree
  add_index "patients", ["city_id"], name: "index_patients_on_city_id", using: :btree
  add_index "patients", ["eps_id"], name: "index_patients_on_eps_id", using: :btree
  add_index "patients", ["user_id"], name: "index_patients_on_user_id", using: :btree

  create_table "personal_histories", force: :cascade do |t|
    t.boolean  "neunatales"
    t.text     "neunatales_description"
    t.boolean  "patologicos"
    t.text     "patologicos_description"
    t.boolean  "quirurgicos"
    t.text     "quirurgicos_description"
    t.boolean  "farmacologicos"
    t.text     "farmacologicos_description"
    t.boolean  "alergicos"
    t.text     "alergicos_description"
    t.boolean  "toxicos"
    t.text     "toxicos_description"
    t.boolean  "traumaticos"
    t.text     "traumaticos_description"
    t.boolean  "hospitables"
    t.text     "hospitables_description"
    t.boolean  "atep_laboral"
    t.text     "atep_laboral_description"
    t.boolean  "familiar"
    t.text     "familiar_description"
    t.boolean  "inmunologicos"
    t.text     "inmunologios_description"
    t.boolean  "asociado_viajes_de_vuelo"
    t.text     "asociado_viajes_de_vuelo_description"
    t.integer  "menstrual_cycle"
    t.string   "gestational_age"
    t.string   "eco"
    t.integer  "fum"
    t.boolean  "pregnancy"
    t.string   "g"
    t.string   "p"
    t.string   "c"
    t.string   "a"
    t.string   "m"
    t.string   "v"
    t.string   "e"
    t.integer  "clinic_history_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "personal_histories", ["clinic_history_id"], name: "index_personal_histories_on_clinic_history_id", using: :btree

  create_table "physical_exams", force: :cascade do |t|
    t.string   "ta_mmgh"
    t.string   "heart_rate"
    t.string   "breathing_frequency"
    t.string   "sat_of_o_ambiente"
    t.string   "sat_of_o_supplementary"
    t.string   "temperature"
    t.string   "weight"
    t.string   "in"
    t.string   "kilograms"
    t.string   "height_in_centimeters"
    t.string   "glucose"
    t.string   "measurement"
    t.boolean  "head"
    t.text     "head_description"
    t.boolean  "sense_organ"
    t.string   "sense_organ_description"
    t.boolean  "neck"
    t.text     "neck_description"
    t.boolean  "rib_cage"
    t.text     "rib_cage_description"
    t.boolean  "heart"
    t.text     "heart_description"
    t.boolean  "lungs"
    t.text     "lungs_description"
    t.boolean  "abdomen"
    t.text     "abdomen_description"
    t.boolean  "genitourinary"
    t.text     "genitourinary_description"
    t.boolean  "rectum"
    t.text     "rectum_description"
    t.boolean  "extremities"
    t.text     "extremities_description"
    t.boolean  "skin_and_appendages"
    t.text     "skin_and_appendages_description"
    t.boolean  "skeletal_muscle"
    t.text     "skeletal_muscle_description"
    t.boolean  "mental"
    t.text     "mental_description"
    t.boolean  "neurological"
    t.text     "neurological_description"
    t.integer  "alteration"
    t.integer  "eye_opening"
    t.integer  "verbal_answer"
    t.integer  "motor_response"
    t.integer  "other_signs"
    t.integer  "clinic_history_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "physical_exams", ["clinic_history_id"], name: "index_physical_exams_on_clinic_history_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_file"
    t.decimal  "price"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "restrictions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "system_reviews", force: :cascade do |t|
    t.boolean  "cardiovascular"
    t.text     "cardiovascular_description"
    t.boolean  "respiratory"
    t.boolean  "abdominal"
    t.text     "abdominal_description"
    t.boolean  "genito_urinario"
    t.text     "genito_urinario_description"
    t.string   "neurological"
    t.text     "neurological_description"
    t.boolean  "mental"
    t.text     "mental_description"
    t.boolean  "sense_organ"
    t.text     "sense_organ_description"
    t.boolean  "skeletal_muscle"
    t.text     "skeletal_muscle_description"
    t.string   "skin_and_appendages"
    t.text     "skin_and_appendages_description"
    t.integer  "clinic_history_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "system_reviews", ["clinic_history_id"], name: "index_system_reviews_on_clinic_history_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                                           null: false
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_surname"
    t.string   "second_surname"
    t.integer  "type_document"
    t.string   "document"
    t.string   "medical_record"
    t.integer  "rol_id"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.string   "picture"
    t.boolean  "admin",                           default: false
    t.integer  "failed_logins_count",             default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", using: :btree

  add_foreign_key "additional_informations", "clinic_histories"
  add_foreign_key "cities", "departments"
  add_foreign_key "clinic_histories", "patients"
  add_foreign_key "clinic_histories", "users"
  add_foreign_key "departments", "countries"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "patients", "arles"
  add_foreign_key "patients", "cities"
  add_foreign_key "patients", "epses"
  add_foreign_key "patients", "users"
  add_foreign_key "personal_histories", "clinic_histories"
  add_foreign_key "physical_exams", "clinic_histories"
  add_foreign_key "products", "users"
  add_foreign_key "system_reviews", "clinic_histories"
end
