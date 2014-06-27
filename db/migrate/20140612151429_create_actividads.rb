class CreateActividads < ActiveRecord::Migration
  def change
    create_table :actividads do |t|
      t.references :usuario, index: true
      t.string :actividad
      t.string :tipo
      t.string :sementera

      t.timestamps
    end
  end
end
