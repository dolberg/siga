class CreateCompraInsumos < ActiveRecord::Migration
  def change
    create_table :compra_insumos do |t|
      t.references :usuario, index: true
      t.string :fecha
      t.string :comprobante
      t.references :insumo, index: true
      t.string :marca
      t.string :proveedor
      t.decimal :cant_fac
      t.decimal :cant_rem
      t.decimal :monto

      t.timestamps
    end
  end
end
