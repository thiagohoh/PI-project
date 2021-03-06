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

ActiveRecord::Schema.define(version: 20171210062846) do

  create_table "actions", force: :cascade do |t|
    t.integer "aluno_id"
    t.date "sala_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_actions_on_aluno_id"
    t.index ["user_id"], name: "index_actions_on_user_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "user_id"
    t.text "notes"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_alunos_on_user_id"
  end

  create_table "alunos_salas", id: false, force: :cascade do |t|
    t.integer "aluno_id", null: false
    t.integer "sala_id", null: false
  end

  create_table "rasps", force: :cascade do |t|
    t.integer "rasp_id"
    t.integer "door_id_t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jet_rfid"
  end

  create_table "salas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "aluno_id"
    t.integer "user_id"
    t.index ["aluno_id"], name: "index_salas_on_aluno_id"
    t.index ["user_id"], name: "index_salas_on_user_id"
  end

  create_table "the_rasps", force: :cascade do |t|
    t.integer "rfid"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_salas", id: false, force: :cascade do |t|
    t.integer "alunno_id"
    t.integer "sala_id"
    t.index ["alunno_id"], name: "index_user_salas_on_alunno_id"
    t.index ["sala_id"], name: "index_user_salas_on_sala_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.integer "status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
