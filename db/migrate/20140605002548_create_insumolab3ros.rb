class CreateInsumolab3ros < ActiveRecord::Migration
  def change
    create_table :insumolab3ros do |t|
      t.references :lab3ro, index: true
      t.references :insumo, index: true
      t.float :cantidad
      t.float :precio
      t.text :comentario

      t.timestamps
    end
  end
end
