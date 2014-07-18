class CreateFacyRems < ActiveRecord::Migration
  def change
    create_table :facy_rems do |t|
      t.references :empresa, index: true
      t.date :fecha
      t.string :comprobante
      t.string :proveedor

      t.timestamps
    end
  end
end
