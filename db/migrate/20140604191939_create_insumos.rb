class CreateInsumos < ActiveRecord::Migration
  def change
    create_table :insumos do |t|
      t.references :usuario, index: true
      t.string :producto
      t.float :salin
      t.float :precin
      t.float :precfin

      t.timestamps
    end
  end
end
