class CreateCompraInsumos < ActiveRecord::Migration[5.2]
  def change
    create_table :compra_insumos do |t|
      t.references :facy_rem, index: true
      t.references :insumo, index: true
      t.string :marca
      t.float :cant_fac
      t.float :cant_rem
      t.float :monto

      t.timestamps
    end
  end
end
