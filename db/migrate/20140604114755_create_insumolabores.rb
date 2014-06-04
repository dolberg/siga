class CreateInsumolabores < ActiveRecord::Migration
  def change
    create_table :insumolabores do |t|
      t.references :labor, index: true
      t.references :insumo, index: true
      t.decimal :cantidad
      t.text :comentario

      t.timestamps
    end
  end
end
