class CreateInsumos < ActiveRecord::Migration[5.2]
  def change
    create_table :insumos do |t|
      t.references :empresa, index: true
      t.string :producto
      t.float :salin
      t.float :precin
      t.float :precfin

      t.timestamps
    end
  end
end
