class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.references :empresa, index: true
      t.string :producto
      t.float :saldoinicial
      t.float :precioinicial
      t.float :preciofinal
      t.string :unidad

      t.timestamps
    end
  end
end
