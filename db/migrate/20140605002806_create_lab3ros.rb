class CreateLab3ros < ActiveRecord::Migration
  def change
    create_table :lab3ros do |t|
      t.references :usuario, index: true
      t.string :fecha
      t.references :campo, index: true
      t.references :lote, index: true
      t.references :actividad, index: true
      t.float :superficie
      t.string :labor
      t.float :costo
      t.text :comentario

      t.timestamps
    end
  end
end
