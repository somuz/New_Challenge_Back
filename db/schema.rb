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

ActiveRecord::Schema[7.0].define(version: 2022_11_08_045905) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.integer "sku"
    t.text "articulo"
    t.text "marca"
    t.text "modelo"
    t.date "alta"
    t.integer "stock"
    t.integer "cantidad"
    t.boolean "descontinuado"
    t.date "baja"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clases", force: :cascade do |t|
    t.integer "num_clase"
    t.string "nombre_clase"
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_clases_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.integer "num_departamento"
    t.string "nombre_departamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.integer "num_familia"
    t.string "nombre_familia"
    t.bigint "clase_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clase_id"], name: "index_families_on_clase_id"
  end

  add_foreign_key "clases", "departments"
  add_foreign_key "families", "clases"
end
