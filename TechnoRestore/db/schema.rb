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

ActiveRecord::Schema.define(version: 20170522042928) do

  create_table "c_products", force: :cascade do |t|
    t.integer  "ptype_id"
    t.integer  "cstatus_id"
    t.integer  "user_id"
    t.string   "Nombre"
    t.text     "Descripcion"
    t.string   "Marca"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["cstatus_id"], name: "index_c_products_on_cstatus_id"
    t.index ["ptype_id"], name: "index_c_products_on_ptype_id"
    t.index ["user_id"], name: "index_c_products_on_user_id"
  end

  create_table "c_statuses", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.integer  "sale_id"
    t.integer  "product_id"
    t.integer  "Cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_details_on_product_id"
    t.index ["sale_id"], name: "index_details_on_sale_id"
  end

  create_table "p_categories", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "p_types", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "ptype_id"
    t.integer  "pcategory_id"
    t.integer  "status_id"
    t.string   "Nombre"
    t.text     "Descripcion"
    t.integer  "Precio"
    t.integer  "Stock"
    t.string   "Marca"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["pcategory_id"], name: "index_products_on_pcategory_id"
    t.index ["ptype_id"], name: "index_products_on_ptype_id"
    t.index ["status_id"], name: "index_products_on_status_id"
  end

  create_table "reparations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cproduct_id"
    t.text     "Description"
    t.datetime "FechaI"
    t.datetime "FechaF"
    t.integer  "PrecioBase"
    t.integer  "PrecioFinal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["cproduct_id"], name: "index_reparations_on_cproduct_id"
    t.index ["user_id"], name: "index_reparations_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.integer  "reparation_id"
    t.integer  "product_id"
    t.datetime "Fecha"
    t.integer  "Cantidad"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["product_id"], name: "index_resources_on_product_id"
    t.index ["reparation_id"], name: "index_resources_on_reparation_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "Fecha"
    t.integer  "Total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sales_on_user_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "usertype_id"
    t.string   "Nombre"
    t.string   "Apellido"
    t.string   "Rut"
    t.string   "Comuna"
    t.string   "Calle"
    t.integer  "Numero"
    t.integer  "Telefono"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["usertype_id"], name: "index_users_on_usertype_id"
  end

  create_table "usertypes", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
