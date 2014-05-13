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

ActiveRecord::Schema.define(version: 20140513132950) do

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

  create_table "lotes", force: true do |t|
    t.integer  "campo_id"
    t.string   "lote"
    t.decimal  "superficie", precision: 10, scale: 0
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
