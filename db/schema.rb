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

ActiveRecord::Schema.define(version: 20140716154958) do

  create_table "actividads", force: true do |t|
    t.integer  "empresa_id"
    t.string   "actividad"
    t.string   "tipo"
    t.string   "sementera"
    t.integer  "producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actividads", ["empresa_id"], name: "index_actividads_on_empresa_id", using: :btree
  add_index "actividads", ["producto_id"], name: "index_actividads_on_producto_id", using: :btree

  create_table "campos", force: true do |t|
    t.integer  "empresa_id"
    t.string   "nombre"
    t.float    "superficie"
    t.string   "provincia"
    t.string   "partido"
    t.string   "localidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campos", ["empresa_id"], name: "index_campos_on_empresa_id", using: :btree

  create_table "cesiones", force: true do |t|
    t.integer  "producto_id"
    t.float    "cantidad"
    t.float    "precio"
    t.integer  "actividad_id"
    t.string   "concepto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cesiones", ["actividad_id"], name: "index_cesiones_on_actividad_id", using: :btree
  add_index "cesiones", ["producto_id"], name: "index_cesiones_on_producto_id", using: :btree

  create_table "coefuta", force: true do |t|
    t.integer  "empresa_id"
    t.string   "labor"
    t.float    "coef"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coefuta", ["empresa_id"], name: "index_coefuta_on_empresa_id", using: :btree

  create_table "compra_insumos", force: true do |t|
    t.integer  "facy_rem_id"
    t.integer  "producto_id"
    t.string   "marca"
    t.float    "cant_fac"
    t.float    "cant_rem"
    t.float    "monto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compra_insumos", ["facy_rem_id"], name: "index_compra_insumos_on_facy_rem_id", using: :btree
  add_index "compra_insumos", ["producto_id"], name: "index_compra_insumos_on_producto_id", using: :btree

  create_table "empresas", force: true do |t|
    t.string   "empresa"
    t.string   "codigo"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facy_rems", force: true do |t|
    t.integer  "empresa_id"
    t.date     "fecha"
    t.string   "comprobante"
    t.string   "proveedor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facy_rems", ["empresa_id"], name: "index_facy_rems_on_empresa_id", using: :btree

  create_table "insumolab3ros", force: true do |t|
    t.integer  "lab3ro_id"
    t.integer  "producto_id"
    t.float    "cantidad"
    t.float    "precio"
    t.string   "categoria"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insumolab3ros", ["lab3ro_id"], name: "index_insumolab3ros_on_lab3ro_id", using: :btree
  add_index "insumolab3ros", ["producto_id"], name: "index_insumolab3ros_on_producto_id", using: :btree

  create_table "insumolabores", force: true do |t|
    t.integer  "labor_id"
    t.integer  "producto_id"
    t.float    "cantidad"
    t.float    "precio"
    t.string   "categoria"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insumolabores", ["labor_id"], name: "index_insumolabores_on_labor_id", using: :btree
  add_index "insumolabores", ["producto_id"], name: "index_insumolabores_on_producto_id", using: :btree

  create_table "insumos", force: true do |t|
    t.integer  "empresa_id"
    t.string   "producto"
    t.float    "salin"
    t.float    "precin"
    t.float    "precfin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insumos", ["empresa_id"], name: "index_insumos_on_empresa_id", using: :btree

  create_table "lab3ros", force: true do |t|
    t.integer  "empresa_id"
    t.date     "fecha"
    t.integer  "campo_id"
    t.integer  "lote_id"
    t.integer  "actividad_id"
    t.float    "superficie"
    t.string   "labor"
    t.float    "costo"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "momento"
  end

  add_index "lab3ros", ["actividad_id"], name: "index_lab3ros_on_actividad_id", using: :btree
  add_index "lab3ros", ["campo_id"], name: "index_lab3ros_on_campo_id", using: :btree
  add_index "lab3ros", ["empresa_id"], name: "index_lab3ros_on_empresa_id", using: :btree
  add_index "lab3ros", ["lote_id"], name: "index_lab3ros_on_lote_id", using: :btree

  create_table "labors", force: true do |t|
    t.integer  "empresa_id"
    t.date     "fecha"
    t.integer  "campo_id"
    t.integer  "lote_id"
    t.integer  "actividad_id"
    t.float    "superficie"
    t.integer  "coefutum_id"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "momento"
  end

  add_index "labors", ["actividad_id"], name: "index_labors_on_actividad_id", using: :btree
  add_index "labors", ["campo_id"], name: "index_labors_on_campo_id", using: :btree
  add_index "labors", ["coefutum_id"], name: "index_labors_on_coefutum_id", using: :btree
  add_index "labors", ["empresa_id"], name: "index_labors_on_empresa_id", using: :btree
  add_index "labors", ["lote_id"], name: "index_labors_on_lote_id", using: :btree

  create_table "loteactividads", force: true do |t|
    t.integer  "empresa_id"
    t.integer  "campo_id"
    t.integer  "lote_id"
    t.integer  "actividad_id"
    t.float    "superficie"
    t.float    "produccion"
    t.float    "precioproduccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "loteactividads", ["actividad_id"], name: "index_loteactividads_on_actividad_id", using: :btree
  add_index "loteactividads", ["campo_id"], name: "index_loteactividads_on_campo_id", using: :btree
  add_index "loteactividads", ["empresa_id"], name: "index_loteactividads_on_empresa_id", using: :btree
  add_index "loteactividads", ["lote_id"], name: "index_loteactividads_on_lote_id", using: :btree

  create_table "lotes", force: true do |t|
    t.integer  "campo_id"
    t.string   "lote"
    t.string   "superficie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lotes", ["campo_id"], name: "index_lotes_on_campo_id", using: :btree

  create_table "productos", force: true do |t|
    t.integer  "empresa_id"
    t.string   "producto"
    t.float    "saldoinicial"
    t.float    "precioinicial"
    t.float    "preciofinal"
    t.string   "unidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "clase"
  end

  add_index "productos", ["empresa_id"], name: "index_productos_on_empresa_id", using: :btree

  create_table "usuarioempresas", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarioempresas", ["empresa_id"], name: "index_usuarioempresas_on_empresa_id", using: :btree
  add_index "usuarioempresas", ["usuario_id"], name: "index_usuarioempresas_on_usuario_id", using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "user"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ventas", force: true do |t|
    t.integer  "producto_id"
    t.float    "cantidad"
    t.float    "montobruto"
    t.float    "costoflete"
    t.float    "costocomercial"
    t.string   "comprador"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comentario"
    t.date     "fecha"
  end

  add_index "ventas", ["producto_id"], name: "index_ventas_on_producto_id", using: :btree

end
