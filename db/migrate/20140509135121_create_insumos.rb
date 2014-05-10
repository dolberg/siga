class CreateInsumos < ActiveRecord::Migration
  def change
    create_table :insumos do |t|
      t.references :usuario, index: true
      t.string :producto
      t.decimal :salin
      t.decimal :precin
      t.decimal :precfin

      t.timestamps
    end
  end
end
