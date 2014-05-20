class CreateActividads < ActiveRecord::Migration
  def change
    create_table :actividads do |t|
      t.references :usuario, index: true
      t.string :actividad
      t.string :tipo
      t.boolean :sem_ini
      t.boolean :sem_fin

      t.timestamps
    end
  end
end
