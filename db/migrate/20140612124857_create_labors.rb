class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.references :usuario, index: true
      t.date :fecha
      t.references :campo, index: true
      t.references :lote, index: true
      t.references :actividad, index: true
      t.float :superficie
      t.references :coefutum, index: true
      t.text :comentario

      t.timestamps
    end
  end
end
