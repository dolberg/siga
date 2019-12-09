class CreateActividads < ActiveRecord::Migration[5.2]
  def change
    create_table :actividads do |t|
      t.references :empresa, index: true
      t.string :actividad
      t.string :tipo
      t.string :sementera
      t.references :producto, index: true

      t.timestamps
    end
  end
end
