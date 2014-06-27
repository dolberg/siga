class CreateLoteactividads < ActiveRecord::Migration
  def change
    create_table :loteactividads do |t|
      t.references :usuario, index: true
      t.references :campo, index: true
      t.references :lote, index: true
      t.references :actividad, index: true

      t.timestamps
    end
  end
end
