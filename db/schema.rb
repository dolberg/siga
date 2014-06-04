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

ActiveRecord::Schema.define(version: 20140604171149) do

  create_table "actividads", force: true do |t|
    t.integer  "usuario_id"
    t.string   "actividad"
    t.string   "tipo"
    t.boolean  "sem_ini"
    t.boolean  "sem_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actividads", ["usuario_id"], name: "index_actividads_on_usuario_id", using: :btree

  create_table "campos", force: true do |t|
    t.integer  "usuario_id"
    t.string   "nombre"
    t.decimal  "superficie", precision: 10, scale: 0
    t.string   "provincia"
    t.string   "partido"
    t.string   "localidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campos", ["usuario_id"], name: "index_campos_on_usuario_id", using: :btree

  create_table "coefuta", force: true do |t|
    t.integer  "usuario_id"
    t.string   "labor"
    t.decimal  "coef",       precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coefuta", ["usuario_id"], name: "index_coefuta_on_usuario_id", using: :btree

  create_table "compra_insumos", force: true do |t|
    t.integer  "FacyRem_id"
    t.integer  "insumo_id"
    t.string   "marca"
    t.decimal  "cant_fac",   precision: 10, scale: 0
    t.decimal  "cant_rem",   precision: 10, scale: 0
    t.decimal  "monto",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compra_insumos", ["FacyRem_id"], name: "index_compra_insumos_on_FacyRem_id", using: :btree
  add_index "compra_insumos", ["insumo_id"], name: "index_compra_insumos_on_insumo_id", using: :btree

  create_table "facy_rems", force: true do |t|
    t.integer  "usuario_id"
    t.string   "fecha"
    t.string   "comprobante"
    t.string   "proveedor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facy_rems", ["usuario_id"], name: "index_facy_rems_on_usuario_id", using: :btree

  create_table "insumolab3ros", force: true do |t|
    t.integer  "lab3ro_id"
    t.integer  "insumo_id"
    t.decimal  "cantidad",   precision: 10, scale: 0
    t.decimal  "precio",     precision: 10, scale: 0
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insumolab3ros", ["insumo_id"], name: "index_insumolab3ros_on_insumo_id", using: :btree
  add_index "insumolab3ros", ["lab3ro_id"], name: "index_insumolab3ros_on_lab3ro_id", using: :btree

  create_table "insumolabores", force: true do |t|
    t.integer  "labor_id"
    t.integer  "insumo_id"
    t.decimal  "cantidad",   precision: 10, scale: 0
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "precio",     precision: 10, scale: 0
  end

  add_index "insumolabores", ["insumo_id"], name: "index_insumolabores_on_insumo_id", using: :btree
  add_index "insumolabores", ["labor_id"], name: "index_insumolabores_on_labor_id", using: :btree

  create_table "insumos", force: true do |t|
    t.integer  "usuario_id"
    t.string   "producto"
    t.decimal  "salin",      precision: 10, scale: 0
    t.decimal  "precin",     precision: 10, scale: 0
    t.decimal  "precfin",    precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insumos", ["usuario_id"], name: "index_insumos_on_usuario_id", using: :btree

  create_table "lab3ros", force: true do |t|
    t.integer  "usuario_id"
    t.string   "fecha"
    t.integer  "campo_id"
    t.integer  "lote_id"
    t.decimal  "superficie", precision: 10, scale: 0
    t.string   "labor"
    t.decimal  "costo",      precision: 10, scale: 0
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lab3ros", ["campo_id"], name: "index_lab3ros_on_campo_id", using: :btree
  add_index "lab3ros", ["lote_id"], name: "index_lab3ros_on_lote_id", using: :btree
  add_index "lab3ros", ["usuario_id"], name: "index_lab3ros_on_usuario_id", using: :btree

  create_table "labors", force: true do |t|
    t.integer  "usuario_id"
    t.string   "fecha"
    t.integer  "campo_id"
    t.integer  "lote_id"
    t.decimal  "superficie",  precision: 10, scale: 0
    t.integer  "coefutum_id"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "labors", ["campo_id"], name: "index_labors_on_campo_id", using: :btree
  add_index "labors", ["coefutum_id"], name: "index_labors_on_coefutum_id", using: :btree
  add_index "labors", ["lote_id"], name: "index_labors_on_lote_id", using: :btree
  add_index "labors", ["usuario_id"], name: "index_labors_on_usuario_id", using: :btree

  create_table "lotes", force: true do |t|
    t.integer  "campo_id"
    t.string   "lote"
    t.string   "superficie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lotes", ["campo_id"], name: "index_lotes_on_campo_id", using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "user"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
