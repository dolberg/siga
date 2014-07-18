class CreateLoteactividads < ActiveRecord::Migration
  def change
    create_table :loteactividads do |t|
      t.references :empresa, index: true
      t.references :campo, index: true
      t.references :lote, index: true
      t.references :actividad, index: true
      t.float :superficie
      t.float :produccion
      t.float :precioproduccion

      t.timestamps
    end
  end
end
