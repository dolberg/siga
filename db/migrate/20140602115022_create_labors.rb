class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.references :usuario, index: true
      t.string :fecha
      t.references :campo, index: true
      t.references :lote, index: true
      t.decimal :superficie
      t.references :coefutum, index: true
      t.text :comentario

      t.timestamps
    end
  end
end
