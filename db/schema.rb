# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2014_07_16_154958) do

  create_table "actividads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.string "actividad"
    t.string "tipo"
    t.string "sementera"
    t.bigint "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_actividads_on_empresa_id"
    t.index ["producto_id"], name: "index_actividads_on_producto_id"
  end

  create_table "campos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.string "nombre"
    t.float "superficie"
    t.string "provincia"
    t.string "partido"
    t.string "localidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_campos_on_empresa_id"
  end

  create_table "coefuta", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.string "labor"
    t.float "coef"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_coefuta_on_empresa_id"
  end

  create_table "compra_insumos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "facy_rem_id"
    t.bigint "producto_id"
    t.string "marca"
    t.float "cant_fac"
    t.float "cant_rem"
    t.float "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facy_rem_id"], name: "index_compra_insumos_on_facy_rem_id"
    t.index ["producto_id"], name: "index_compra_insumos_on_producto_id"
  end

  create_table "empresas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "empresa"
    t.string "codigo"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facy_rems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.date "fecha"
    t.string "comprobante"
    t.string "proveedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_facy_rems_on_empresa_id"
  end

  create_table "insumolab3ros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "lab3ro_id"
    t.bigint "producto_id"
    t.float "cantidad"
    t.float "precio"
    t.string "categoria"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lab3ro_id"], name: "index_insumolab3ros_on_lab3ro_id"
    t.index ["producto_id"], name: "index_insumolab3ros_on_producto_id"
  end

  create_table "insumolabores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "labor_id"
    t.bigint "producto_id"
    t.float "cantidad"
    t.float "precio"
    t.string "categoria"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["labor_id"], name: "index_insumolabores_on_labor_id"
    t.index ["producto_id"], name: "index_insumolabores_on_producto_id"
  end

  create_table "insumos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.string "producto"
    t.float "salin"
    t.float "precin"
    t.float "precfin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_insumos_on_empresa_id"
  end

  create_table "lab3ros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.date "fecha"
    t.bigint "campo_id"
    t.bigint "lote_id"
    t.bigint "actividad_id"
    t.float "superficie"
    t.string "labor"
    t.float "costo"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "momento"
    t.index ["actividad_id"], name: "index_lab3ros_on_actividad_id"
    t.index ["campo_id"], name: "index_lab3ros_on_campo_id"
    t.index ["empresa_id"], name: "index_lab3ros_on_empresa_id"
    t.index ["lote_id"], name: "index_lab3ros_on_lote_id"
  end

  create_table "labors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.date "fecha"
    t.bigint "campo_id"
    t.bigint "lote_id"
    t.bigint "actividad_id"
    t.float "superficie"
    t.bigint "coefutum_id"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "momento"
    t.index ["actividad_id"], name: "index_labors_on_actividad_id"
    t.index ["campo_id"], name: "index_labors_on_campo_id"
    t.index ["coefutum_id"], name: "index_labors_on_coefutum_id"
    t.index ["empresa_id"], name: "index_labors_on_empresa_id"
    t.index ["lote_id"], name: "index_labors_on_lote_id"
  end

  create_table "loteactividads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.bigint "campo_id"
    t.bigint "lote_id"
    t.bigint "actividad_id"
    t.float "superficie"
    t.float "produccion"
    t.float "precioproduccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actividad_id"], name: "index_loteactividads_on_actividad_id"
    t.index ["campo_id"], name: "index_loteactividads_on_campo_id"
    t.index ["empresa_id"], name: "index_loteactividads_on_empresa_id"
    t.index ["lote_id"], name: "index_loteactividads_on_lote_id"
  end

  create_table "lotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "campo_id"
    t.string "lote"
    t.string "superficie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campo_id"], name: "index_lotes_on_campo_id"
  end

  create_table "productos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "empresa_id"
    t.string "producto"
    t.float "saldoinicial"
    t.float "precioinicial"
    t.float "preciofinal"
    t.string "unidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "clase"
    t.index ["empresa_id"], name: "index_productos_on_empresa_id"
  end

  create_table "usuarioempresas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "empresa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_usuarioempresas_on_empresa_id"
    t.index ["usuario_id"], name: "index_usuarioempresas_on_usuario_id"
  end

  create_table "usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "user"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ventas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "producto_id"
    t.float "cantidad"
    t.float "montobruto"
    t.float "costoflete"
    t.float "costocomercial"
    t.string "comprador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "comentario"
    t.date "fecha"
    t.index ["producto_id"], name: "index_ventas_on_producto_id"
  end

end
