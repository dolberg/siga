class CreateFacyRems < ActiveRecord::Migration
  def change
    create_table :facy_rems do |t|
      t.references :usuario, index: true
      t.date :fecha
      t.string :comprobante
      t.string :proveedor

      t.timestamps
    end
  end
end
