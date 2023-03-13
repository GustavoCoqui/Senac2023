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

ActiveRecord::Schema[7.0].define(version: 2023_03_10_210846) do
  create_table "orders", force: :cascade do |t|
    t.integer "pao_de_alho"
    t.decimal "linguica_fina", precision: 10, scale: 3
    t.decimal "liguica_groca", precision: 10, scale: 3
    t.decimal "queijo", precision: 10, scale: 3
    t.decimal "frango", precision: 10, scale: 3
    t.decimal "porco", precision: 10, scale: 3
    t.decimal "costela_de_ovelha", precision: 10, scale: 3
    t.decimal "paleta_de_ovelha", precision: 10, scale: 3
    t.decimal "picanha", precision: 10, scale: 3
    t.decimal "file_mignion", precision: 10, scale: 3
    t.decimal "maminha", precision: 10, scale: 3
    t.decimal "entrecort", precision: 10, scale: 3
    t.decimal "costela", precision: 10, scale: 3
    t.decimal "vazio", precision: 10, scale: 3
    t.decimal "alcatra", precision: 10, scale: 3
    t.decimal "capa_de_file", precision: 10, scale: 3
    t.integer "sorvete"
    t.integer "chocolate_barra"
    t.integer "bombom"
    t.integer "ceveja_lata"
    t.integer "refrigerante"
    t.integer "agua_sem_gas"
    t.integer "agua_com_gas"
    t.integer "espumante"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "entrega"
    t.integer "pagamento", default: 1
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "cpf"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
