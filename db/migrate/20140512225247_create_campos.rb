class CreateCampos < ActiveRecord::Migration
  def change
    create_table :campos do |t|
      t.references :usuario, index: true
      t.string :nombre
      t.decimal :superficie
      t.string :provincia
      t.string :partido
      t.string :localidad

      t.timestamps
    end
  end
end
