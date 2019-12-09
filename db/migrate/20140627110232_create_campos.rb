class CreateCampos < ActiveRecord::Migration[5.2]
  def change
    create_table :campos do |t|
      t.references :empresa, index: true
      t.string :nombre
      t.float :superficie
      t.string :provincia
      t.string :partido
      t.string :localidad

      t.timestamps
    end
  end
end
