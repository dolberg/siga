class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.references :campo, index: true
      t.string :lote
      t.decimal :superficie

      t.timestamps
    end
  end
end
