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

ActiveRecord::Schema.define(version: 2018_10_09_181907) do

  create_table "companies", force: :cascade do |t|
    t.string "Nombre"
    t.string "Domicilio"
    t.string "Pais"
    t.integer "Telefono"
    t.string "Email"
    t.string "Web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_movements", force: :cascade do |t|
    t.integer "header_movements_id"
    t.integer "products_id"
    t.integer "precio_unitario"
    t.integer "cantidad"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["header_movements_id"], name: "index_detail_movements_on_header_movements_id"
    t.index ["products_id"], name: "index_detail_movements_on_products_id"
  end

  create_table "detail_order_of_works", force: :cascade do |t|
    t.integer "header_order_of_work_id"
    t.string "cod_ojo"
    t.string "cod_cercania"
    t.string "esf"
    t.string "cil"
    t.string "eje"
    t.string "dip"
    t.string "altura"
    t.string "cb"
    t.string "diam"
    t.integer "products_id"
    t.string "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["header_order_of_work_id"], name: "index_detail_order_of_works_on_header_order_of_work_id"
    t.index ["products_id"], name: "index_detail_order_of_works_on_products_id"
  end

  create_table "document_types", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "header_movements", force: :cascade do |t|
    t.integer "movement_types_id"
    t.integer "document_types_id"
    t.integer "header_order_of_works_id"
    t.integer "providers_id"
    t.datetime "fecha_creacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_types_id"], name: "index_header_movements_on_document_types_id"
    t.index ["header_order_of_works_id"], name: "index_header_movements_on_header_order_of_works_id"
    t.index ["movement_types_id"], name: "index_header_movements_on_movement_types_id"
    t.index ["providers_id"], name: "index_header_movements_on_providers_id"
  end

  create_table "header_order_of_works", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "fecha_ingres"
    t.datetime "fecha_entrega"
    t.string "horas"
    t.integer "acuenta"
    t.integer "saldo"
    t.integer "total"
    t.integer "flag_entregado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "numero_orden"
    t.index ["user_id"], name: "index_header_order_of_works_on_user_id"
  end

  create_table "movement_types", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "cod_producto"
    t.string "nombre"
    t.string "marca"
    t.string "color"
    t.string "medidas"
    t.integer "vigente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "telefono"
    t.string "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "telefono"
    t.string "email"
    t.integer "companies_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["companies_id"], name: "index_stores_on_companies_id"
  end

  create_table "user_stores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_user_stores_on_store_id"
    t.index ["user_id"], name: "index_user_stores_on_user_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string "nombre"
    t.integer "user_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_types_id"], name: "index_users_on_user_types_id"
  end

end
