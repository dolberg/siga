class CreateInsumolabores < ActiveRecord::Migration
  def change
    create_table :insumolabores do |t|
      t.references :labor, index: true
      t.references :insumo, index: true
      t.float :cantidad
      t.float :precio
      t.string :categoria
      t.text :comentario

      t.timestamps
    end
  end
end
