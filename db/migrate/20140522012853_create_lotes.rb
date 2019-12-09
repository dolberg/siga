class CreateLotes < ActiveRecord::Migration[5.2]
  def change
    create_table :lotes do |t|
      t.references :campo, index: true
      t.string :lote
      t.string :superficie

      t.timestamps
    end
  end
end
