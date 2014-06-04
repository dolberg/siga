class CreateLab3ros < ActiveRecord::Migration
  def change
    create_table :lab3ros do |t|
      t.references :usuario, index: true
      t.string :fecha
      t.references :campo, index: true
      t.references :lote, index: true
      t.decimal :superficie
      t.string :labor
      t.decimal :costo
      t.text :comentario

      t.timestamps
    end
  end
end
