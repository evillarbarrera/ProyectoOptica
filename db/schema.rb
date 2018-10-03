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

ActiveRecord::Schema.define(version: 2018_08_17_143553) do

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Nombre"
    t.string "Domicilio"
    t.string "Pais"
    t.integer "Telefono"
    t.string "Email"
    t.string "Web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_movements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "header_movements_id"
    t.bigint "products_id"
    t.integer "precio_unitario"
    t.integer "cantidad"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["header_movements_id"], name: "index_detail_movements_on_header_movements_id"
    t.index ["products_id"], name: "index_detail_movements_on_products_id"
  end

  create_table "detail_order_of_works", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "header_order_of_work_id"
    t.string "cod_ojo"
    t.string "cod_cercania"
    t.string "esf"
    t.string "cil"
    t.string "eje"
    t.string "dip"
    t.string "altura"
    t.string "cb"
    t.string "diam"
    t.bigint "products_id"
    t.string "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["header_order_of_work_id"], name: "index_detail_order_of_works_on_header_order_of_work_id"
    t.index ["products_id"], name: "index_detail_order_of_works_on_products_id"
  end

  create_table "document_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "header_movements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "movement_types_id"
    t.bigint "document_types_id"
    t.bigint "header_order_of_works_id"
    t.bigint "providers_id"
    t.datetime "fecha_creacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_types_id"], name: "index_header_movements_on_document_types_id"
    t.index ["header_order_of_works_id"], name: "index_header_movements_on_header_order_of_works_id"
    t.index ["movement_types_id"], name: "index_header_movements_on_movement_types_id"
    t.index ["providers_id"], name: "index_header_movements_on_providers_id"
  end

  create_table "header_order_of_works", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "fecha_ingres"
    t.datetime "fecha_entrega"
    t.string "horas"
    t.integer "acuenta"
    t.integer "saldo"
    t.integer "total"
    t.integer "flag_entregado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_header_order_of_works_on_user_id"
  end

  create_table "movement_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cod_producto"
    t.string "nombre"
    t.string "marca"
    t.string "color"
    t.string "medidas"
    t.integer "vigente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "telefono"
    t.string "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "telefono"
    t.string "email"
    t.bigint "companies_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["companies_id"], name: "index_stores_on_companies_id"
  end

  create_table "user_stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_user_stores_on_store_id"
    t.index ["user_id"], name: "index_user_stores_on_user_id"
  end

  create_table "user_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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
    t.bigint "user_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_types_id"], name: "index_users_on_user_types_id"
  end

  add_foreign_key "detail_movements", "header_movements", column: "header_movements_id"
  add_foreign_key "detail_movements", "products", column: "products_id"
  add_foreign_key "detail_order_of_works", "header_order_of_works"
  add_foreign_key "detail_order_of_works", "products", column: "products_id"
  add_foreign_key "header_movements", "document_types", column: "document_types_id"
  add_foreign_key "header_movements", "header_order_of_works", column: "header_order_of_works_id"
  add_foreign_key "header_movements", "movement_types", column: "movement_types_id"
  add_foreign_key "header_movements", "providers", column: "providers_id"
  add_foreign_key "header_order_of_works", "users"
  add_foreign_key "stores", "companies", column: "companies_id"
  add_foreign_key "user_stores", "stores"
  add_foreign_key "user_stores", "users"
  add_foreign_key "users", "user_types", column: "user_types_id"
end
