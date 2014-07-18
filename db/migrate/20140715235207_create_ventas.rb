class CreateVentas < ActiveRecord::Migration
  def change
    create_table :ventas do |t|
      t.references :producto, index: true
      t.float :cantidad
      t.float :montobruto
      t.float :costoflete
      t.float :costocomercial
      t.string :comprador

      t.timestamps
    end
  end
end
